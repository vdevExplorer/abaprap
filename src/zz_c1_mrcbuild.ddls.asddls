@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for MRC Build'
//@Search.searchable: true
define view entity ZZ_C1_MRCBUILD
  as projection on ZZ_R1_MRCBUILD
{
  key MRCBuildUUID,
      LineItem,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZZ_R_MRC', element: 'MRCUUID'} }]
      @ObjectModel.text.element: ['MRCCode']
      MRCUUID,
      @Search.defaultSearchElement: true
      _mrc.MRCCode as MRCCode,
   
      ReplyTableUUID,
      IsTemporary,
      CreatedBy,
      CreatedAt,
      LastChangedAt,
      LastChangedBy,
      LocalLastChanged,
      /* Associations */
      _replyTable : redirected to parent ZZ_C_ReplyTable
      //_Reply_Code


}
