<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Matlab_functions" Type="Folder" URL="../Matlab_functions">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="GUI Main Window.vi" Type="VI" URL="../User Interface Window VIs/GUI Main Window.vi"/>
		<Item Name="User Interface Window VIs.lvlib" Type="Library" URL="../User Interface Window VIs.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="AddNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/AddNamedSemaphorePrefix.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Case Matching.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/internet/utils/strutil.llb/Case Matching.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close Panel.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/victl.llb/Close Panel.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Create Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Create Semaphore.vi"/>
				<Item Name="Destroy Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Destroy Semaphore.vi"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="FTP File Info.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/internet/ftp/ftp2.llb/FTP File Info.ctl"/>
				<Item Name="FTP Session Data.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/internet/ftp/ftp0.llb/FTP Session Data.ctl"/>
				<Item Name="FTP Session.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/internet/ftp/ftp0.llb/FTP Session.ctl"/>
				<Item Name="FTP Status" Type="VI" URL="/&lt;vilib&gt;/addons/internet/ftp/ftp2.llb/FTP Status"/>
				<Item Name="FTP Type.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/internet/ftp/ftp0.llb/FTP Type.ctl"/>
				<Item Name="Get Semaphore Status.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Get Semaphore Status.vi"/>
				<Item Name="GetNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/GetNamedSemaphorePrefix.vi"/>
				<Item Name="Keyed Array.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/internet/utils/keyedarr.llb/Keyed Array.ctl"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/numeric/LVNumericRepresentation.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_InternetTK_Common_VIs.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/internet/NI_InternetTK_Common_VIs.lvlib"/>
				<Item Name="NI_InternetTK_FTP_VIs.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/internet/NI_InternetTK_FTP_VIs.lvlib"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="Obtain Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Obtain Semaphore Reference.vi"/>
				<Item Name="Open Panel.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/victl.llb/Open Panel.vi"/>
				<Item Name="Release Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore Reference.vi"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="RemoveNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/RemoveNamedSemaphorePrefix.vi"/>
				<Item Name="Semaphore Name &amp; Ref DB Action.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Name &amp; Ref DB Action.ctl"/>
				<Item Name="Semaphore Name &amp; Ref DB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Name &amp; Ref DB.vi"/>
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="SetT0.vi" Type="VI" URL="/&lt;vilib&gt;/express/express signal manip/GetorSetDDTAttributes/Set DDT Attributes/SetT0.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Validate Semaphore Size.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Validate Semaphore Size.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="Waveform Array To Dynamic.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Waveform Array To Dynamic.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="Common VIs.lvlib" Type="Library" URL="../Common VIs.lvlib"/>
			<Item Name="File VIs.lvlib" Type="Library" URL="../File VIs.lvlib"/>
			<Item Name="Filter VIs.lvlib" Type="Library" URL="../Filter VIs.lvlib"/>
			<Item Name="lvanlys.dll" Type="Document" URL="../../../../../Arquivos de programas/National Instruments/LabVIEW 2011/resource/lvanlys.dll"/>
			<Item Name="Misc VIs.lvlib" Type="Library" URL="../Misc VIs.lvlib"/>
			<Item Name="Third Party VIs.lvlib" Type="Library" URL="../Third Party VIs.lvlib"/>
			<Item Name="Type Definitions.lvlib" Type="Library" URL="../Type Definitions.lvlib"/>
			<Item Name="User Interface VIs.lvlib" Type="Library" URL="../User Interface VIs.lvlib"/>
			<Item Name="user32" Type="VI" URL="user32">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="user32.dll" Type="Document" URL="user32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="XML VIs.lvlib" Type="Library" URL="../XML VIs.lvlib"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="GUI FOFB UVX" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{DAB1BE05-FBFA-4AE8-B541-995A8934D918}</Property>
				<Property Name="App_INI_GUID" Type="Str">{B76DD414-CCC7-43FA-AC0F-42BC9B8110E2}</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{EE325E09-9FD6-4854-A317-98EECFC3B5F5}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">GUI FOFB UVX</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../FOFB_v1.0/Setup/Build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{702C1748-5E96-4398-8C93-AB72A2B735CB}</Property>
				<Property Name="Destination[0].destName" Type="Str">GUI FOFB UVX.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../FOFB_v1.0/Setup/Build/GUI FOFB UVX.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../FOFB_v1.0/Setup/Build/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{431485A7-BAF1-4165-9737-CC0ADC747C48}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/GUI Main Window.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/User Interface Window VIs.lvlib/GUI Monitoring Graph Window.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/User Interface Window VIs.lvlib/GUI Monitoring Graph Selection Window.vi</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_companyName" Type="Str">CNPEM - LNLS</Property>
				<Property Name="TgtF_fileDescription" Type="Str">GUI FOFB UVX</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">GUI FOFB UVX</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2013</Property>
				<Property Name="TgtF_productName" Type="Str">GUI FOFB UVX</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{CBDF0497-C3B5-4C8C-92DE-155593930B1D}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">GUI FOFB UVX.exe</Property>
			</Item>
			<Item Name="GUI FOFB UVX Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">C:\Arq\Controle\FOFB</Property>
				<Property Name="Destination[0].path" Type="Path">/C/Arq/Controle/FOFB</Property>
				<Property Name="Destination[0].tag" Type="Str">{3BC0971C-13FE-489E-81D1-475524D04064}</Property>
				<Property Name="Destination[0].type" Type="Str">absFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{5ECC8FF1-BCAD-4197-9C95-4E94E2A6AB6D}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI LabVIEW Run-Time Engine 2011 SP1</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{6AD6C111-233B-4924-A3BF-E4813FE23C7A}</Property>
				<Property Name="DistPartCount" Type="Int">1</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../FOFB_v1.0/Setup</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">GUI FOFB UVX Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{3BC0971C-13FE-489E-81D1-475524D04064}</Property>
				<Property Name="INST_productName" Type="Str">GUI FOFB UVX</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.11</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">11008029</Property>
				<Property Name="MSI_arpCompany" Type="Str">CNPEM - LNLS</Property>
				<Property Name="MSI_distID" Type="Str">{3F9E3B6B-3655-4AC6-8D91-669B113B5025}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{65543196-1CD8-4609-8924-4E9813A55A59}</Property>
				<Property Name="MSI_windowMessage" Type="Str">Instalação da interface de usuário (GUI) do sistema de correção de órbita rápida (FOFB) do anel de armazenamento UVX do LNLS.</Property>
				<Property Name="MSI_windowTitle" Type="Str">Instalação GUI FOFB UVX</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{3BC0971C-13FE-489E-81D1-475524D04064}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{3BC0971C-13FE-489E-81D1-475524D04064}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">fofb_acquire_data.m</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">GUI FOFB UVX</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">GUI FOFB UVX</Property>
				<Property Name="Source[0].File[0].Shortcut[2].destIndex" Type="Int">2</Property>
				<Property Name="Source[0].File[0].Shortcut[2].name" Type="Str">GUI FOFB UVX</Property>
				<Property Name="Source[0].File[0].Shortcut[2].subDir" Type="Str">GUI FOFB UVX</Property>
				<Property Name="Source[0].File[0].tag" Type="Ref">/My Computer/Matlab_functions/fofb_acquire_data.m</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">Matlab_functions</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Matlab_functions</Property>
				<Property Name="Source[0].type" Type="Str">Folder</Property>
				<Property Name="Source[1].dest" Type="Str">{3BC0971C-13FE-489E-81D1-475524D04064}</Property>
				<Property Name="Source[1].File[0].dest" Type="Str">{3BC0971C-13FE-489E-81D1-475524D04064}</Property>
				<Property Name="Source[1].File[0].name" Type="Str">GUI FOFB UVX.exe</Property>
				<Property Name="Source[1].File[0].Shortcut[0].destIndex" Type="Int">2</Property>
				<Property Name="Source[1].File[0].Shortcut[0].name" Type="Str">GUI FOFB UVX</Property>
				<Property Name="Source[1].File[0].Shortcut[0].subDir" Type="Str">FOFB</Property>
				<Property Name="Source[1].File[0].Shortcut[1].destIndex" Type="Int">1</Property>
				<Property Name="Source[1].File[0].Shortcut[1].name" Type="Str">GUI FOFB UVX</Property>
				<Property Name="Source[1].File[0].Shortcut[1].subDir" Type="Str"></Property>
				<Property Name="Source[1].File[0].ShortcutCount" Type="Int">2</Property>
				<Property Name="Source[1].File[0].tag" Type="Str">{CBDF0497-C3B5-4C8C-92DE-155593930B1D}</Property>
				<Property Name="Source[1].FileCount" Type="Int">1</Property>
				<Property Name="Source[1].name" Type="Str">GUI FOFB UVX</Property>
				<Property Name="Source[1].tag" Type="Ref">/My Computer/Build Specifications/GUI FOFB UVX</Property>
				<Property Name="Source[1].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
			</Item>
		</Item>
	</Item>
</Project>
