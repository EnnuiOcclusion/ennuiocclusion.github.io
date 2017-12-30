#! /bin/sh

BUILD_DIR="./_site"
TMP_DIR="/tmp/jekyll_build"
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Delete old build files if any
rm -rf $BUILD_DIR

# Build
bundle exec jekyll build

# If Build succeeds
if [ -d "$BUILD_DIR" ]; then
    echo "JEKYLL: BUILD SUCCESS"
    rm -r $TMP_DIR

    # Move BUILD_DIR to /tmp
    mv $BUILD_DIR $TMP_DIR

    # Change branch to master
    if git checkout master; then
        echo "SUCCESSFULLY SWITCHED TO MASTER"

        # Cleanup
        ls | xargs rm -r

        # Get the build
        mv $TMP_DIR/* .

        # Commit
        git add .
        git commit -m "Deploy $(date)"
        if git push origin master; then
            echo "DEPLOYED SUCCESSFULLY !"
            echo $(basename $(git remote show -n origin | grep Fetch | cut -d: -f2-))
        else
            echo "DEPLOY FAILED !"
        fi
    else
        echo "CANNOT SWITCH BRANCH, ABORTING"
    fi

else
    echo "JEKYLL: BUILD FAILURE"
fi

git checkout $CURRENT_BRANCH
