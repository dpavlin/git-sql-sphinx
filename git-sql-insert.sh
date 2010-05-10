test ! -z "$GIT" && cd $GIT
git log --pretty=format:"%H@@@%P@@@%ai@@@%s" | sed -e "s/['\\]//g" -e "s/@@@/','/g" -e "s/^/insert into log values (NULL,'/" -e "s/$/');/"
test ! -z "$GIT" && cd - >/dev/null
