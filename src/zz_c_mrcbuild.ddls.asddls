@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for MRC Build'
//@Search.searchable: true
define view entity ZZ_C_MRCBUILD
  as projection on ZZ_R_MRCBUILD
{
  key MRCBuildUUID,
      LineItem,
      MRCUUID,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZZ_I_REPLYTABLE', element: 'ReplyTableUUID'} }]
      @ObjectModel.text.element: ['ReplyTable']
      ReplyTableUUID,
      @Search.defaultSearchElement: true
      _Reply_Table.ReplyTable as ReplyTable,


      IsTemporary,
      CreatedBy,
      CreatedAt,
      LastChangedAt,
      LastChangedBy,
      LocalLastChanged,
      /* Associations */
      _mrc : redirected to parent ZZ_C_MRC,
      _Reply_Table,
      _Reply_Code


}
