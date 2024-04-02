#This resources variable can be changed to anything that the get-azresource supports.  
$resources = get-azresource -ResourceType Microsoft.HybridCompute/machines

#Enter your tags as a Tag/Value pair.
$tags = @{"Tag1"="Value1"; "Tag2"="Value2"}

ForEach ($resource in $resources)
{
    New-AzTag -ResourceId $resource.id -Tag $tags
}
