$resources = get-azresource -ResourceType Microsoft.HybridCompute/machines
$tags = @{"Tag1"="Value1"; "Tag2"="Value2"}
ForEach ($resource in $resources)
{
    New-AzTag -ResourceId $resource.id -Tag $tags
}
