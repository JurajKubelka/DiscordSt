I convert a post object to a Zinc entity (ZnEntity).

If the post includes binary data, I return a ZnMultiPartFormDataEntity object. If all the data can be enconded in JSON, I return a ZnTextEntity object.