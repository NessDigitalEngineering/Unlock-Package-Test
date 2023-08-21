public with sharing class StnyAssetService {
    public List<StnryAssetEnvrSrc> getAsset(String assetName){
        return [Select id,Name from StnryAssetEnvrSrc where Name =:assetName with SECURITY_ENFORCED];
    }

    public List<Database.SaveResult> createRecords(List<StnryAssetEnvrSrc> assets){
        return Database.Insert(assets,true);
    }

    public List<Database.SaveResult> updateRecords(List<StnryAssetEnvrSrc> assets){
        return Database.Update(assets,true);
    }
}