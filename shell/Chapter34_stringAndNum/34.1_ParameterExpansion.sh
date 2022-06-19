#! /bin/bash

# 34.1.1
a="foo"
echo "$a_file"
echo "${a}_file"
echo "$11"
echo "${11}"


# 34.1.2
foo=
echo "${foo:-word}"
echo $foo
foo=
echo "${foo:=word}"
echo $foo
foo=
echo "${foo:?"empty"}"
echo $foo
foo=
echo "${foo:+word}"
echo $foo


# 34.1.3
echo ${!BASH*}
echo ${!BASH@}


#31.4
foo="truth is quick knife."
echo "${#foo}"
echo "${#*}"

echo "${foo:5:2}"
echo "${@:0:4}"
# end character index is -1
echo "${foo: -5:2}"

echo "${foo#t*}"
echo "${foo##t*}"
echo "${foo%t*}"
echo "${foo%%t*}"

echo "${foo/t/replace}"
echo "${foo//t/replace}"
echo "${foo/#t/replace}"
echo "${foo/%t/replace}"

for i;do
    if [[ -r $i ]];then
        max_word=
        max_len=
        for j in $(strings $i);do
            len=${#j}
            if (( len > max_word ));then
                max_word=$j
                max_len=$len
                # max_word = $j
                # max_len = $len
            fi
        done
        echo "$i : '$max_word' ($max_len characters)."
    fi
    shift
done