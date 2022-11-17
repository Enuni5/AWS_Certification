n=0
for OUTPUT in $(aws ec2 describe-regions --all-regions --output json | jq -r ".Regions[].RegionName")
do
                if ! $(aws ec2 describe-regions --all-regions --dry-run --output json | jq -r ".Regions[$n].RegionName")
                then
                        REG=$(aws ec2 describe-regions --all-regions --output json | jq -r ".Regions[$n].RegionName")
                        aws ec2 describe-availability-zones --region $REG --output table
                fi
        n=$n+1
done