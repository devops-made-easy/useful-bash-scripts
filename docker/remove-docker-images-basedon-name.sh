#execute this script as sh filename.sh image_name  to remove all images with different tags

name="$1"
for  image in `sudo docker images | grep $name | awk -F" " '{print $3}' `
do
echo $image to be removed
docker rmi $image
done
