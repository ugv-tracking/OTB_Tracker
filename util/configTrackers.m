function trackers=configTrackers

trackersVIVID={struct('name','VR','namePaper','VR-V'),...%gray-25%
    struct('name','TM','namePaper','TM-V'),...%dark red
    struct('name','RS','namePaper','RS-V'),...%orange
    struct('name','PD','namePaper','PD-V'),...%Turquoise
    struct('name','MS','namePaper','MS-V')%purple
};

trackers1={   struct('name','CT','namePaper','CT'),...
    struct('name','TLD','namePaper','TLD'),...    
    struct('name','ivt','namePaper','IVT'),...
    struct('name','DFT','namePaper','DFT'),...%yellow
    struct('name','ASLA','namePaper','ASLA'),...
    struct('name','L1APG','namePaper','L1APG'),...    
    struct('name','ORIA','namePaper','ORIA'),...
    struct('name','MTT','namePaper','MTT'),...
    struct('name','CSK','namePaper','CSK'),...
    struct('name','SCM','namePaper','SCM'),...
    struct('name','LOT','namePaper','LOT')};

trackersEXE={ struct('name','cpf','namePaper','CPF'),...
    struct('name','Struck','namePaper','Struck'),...
    struct('name','MIL','namePaper','MIL'),...
    struct('name','OAB','namePaper','OAB'),...
    struct('name','sbt','namePaper','SemiT'),...
    struct('name','bsbt','namePaper','BSBT'),...
    struct('name','Frag','namePaper','Frag'),...
    struct('name','KMS','namePaper','KMS'),...
    struct('name','sms','namePaper','SMS'),...
    struct('name','LSK','namePaper','LSK'),...
    struct('name','VTS','namePaper','VTS'),...
    struct('name','VTD','namePaper','VTD'),...
    struct('name','CXT','namePaper','CXT')};

trackers = [trackersVIVID,trackers1,trackersEXE];
