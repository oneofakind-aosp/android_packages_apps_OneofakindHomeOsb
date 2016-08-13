.class public final enum Lcom/sonymobile/home/DialogFactory$Action;
.super Ljava/lang/Enum;
.source "DialogFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/DialogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/DialogFactory$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum APP_ON_EXTERNAL_STORAGE:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum CANNOT_CUSTOMIZE:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum CONFIRMATION_DIALOG:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum DELETE_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum DELETE_PAGE:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum DELETE_UNLOADABLE_APP:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum DISABLE_APP:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum FOLDER_NAME:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum NON_UNINSTALLABLE:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum NON_UNINSTALLABLE_APPINFO:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum SET_HOME_STYLE:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum SET_SORT_MODE:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum UNINSTALL_APP:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum UNINSTALL_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

.field public static final enum UPGRADE_CHANGE_GRID_SIZE:Lcom/sonymobile/home/DialogFactory$Action;


# instance fields
.field final mDialogActionCode:I

.field final mDialogTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "DELETE_FOLDER"

    const-string v2, "folderDeleteDialog"

    const v3, 0x7f0f0020

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

    .line 85
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "DELETE_PAGE"

    const-string v2, "deletePageDialog"

    const v3, 0x7f0f0021

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_PAGE:Lcom/sonymobile/home/DialogFactory$Action;

    .line 86
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "DELETE_UNLOADABLE_APP"

    const-string v2, "deleteUnloadableAppDialog"

    const v3, 0x7f0f0022

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_UNLOADABLE_APP:Lcom/sonymobile/home/DialogFactory$Action;

    .line 87
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "APP_ON_EXTERNAL_STORAGE"

    const-string v2, "onExternalStorageDialog"

    const v3, 0x7f0f001d

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->APP_ON_EXTERNAL_STORAGE:Lcom/sonymobile/home/DialogFactory$Action;

    .line 88
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "FOLDER_NAME"

    const-string v2, "folderNameDialog"

    const v3, 0x7f0f0024

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->FOLDER_NAME:Lcom/sonymobile/home/DialogFactory$Action;

    .line 89
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "UNINSTALL_FOLDER"

    const/4 v2, 0x5

    const-string v3, "folderUninstallDialog"

    const v4, 0x7f0f002a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->UNINSTALL_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

    .line 90
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "UPGRADE_CHANGE_GRID_SIZE"

    const/4 v2, 0x6

    const-string v3, "upgradeChangeGridSizeDialog"

    const v4, 0x7f0f002b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->UPGRADE_CHANGE_GRID_SIZE:Lcom/sonymobile/home/DialogFactory$Action;

    .line 91
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "CANNOT_CUSTOMIZE"

    const/4 v2, 0x7

    const-string v3, "cannotCustomizeDialog"

    const v4, 0x7f0f001e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->CANNOT_CUSTOMIZE:Lcom/sonymobile/home/DialogFactory$Action;

    .line 92
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "SET_SORT_MODE"

    const/16 v2, 0x8

    const-string v3, "setAppTraySortModeDialog"

    const v4, 0x7f0f0027

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->SET_SORT_MODE:Lcom/sonymobile/home/DialogFactory$Action;

    .line 93
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "SET_HOME_STYLE"

    const/16 v2, 0x9

    const-string v3, "setHomeStyle"

    const v4, 0x7f0f0028

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->SET_HOME_STYLE:Lcom/sonymobile/home/DialogFactory$Action;

    .line 94
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "CONFIRMATION_DIALOG"

    const/16 v2, 0xa

    const-string v3, "confirmationDialog"

    const v4, 0x7f0f001f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->CONFIRMATION_DIALOG:Lcom/sonymobile/home/DialogFactory$Action;

    .line 95
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "UNINSTALL_APP"

    const/16 v2, 0xb

    const-string v3, "uninstallAppDialog"

    const v4, 0x7f0f0029

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->UNINSTALL_APP:Lcom/sonymobile/home/DialogFactory$Action;

    .line 96
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "DISABLE_APP"

    const/16 v2, 0xc

    const-string v3, "disableAppDialog"

    const v4, 0x7f0f0023

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->DISABLE_APP:Lcom/sonymobile/home/DialogFactory$Action;

    .line 97
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "NON_UNINSTALLABLE_APPINFO"

    const/16 v2, 0xd

    const-string v3, "nonUninstallableAppInfoDialog"

    const v4, 0x7f0f0026

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->NON_UNINSTALLABLE_APPINFO:Lcom/sonymobile/home/DialogFactory$Action;

    .line 98
    new-instance v0, Lcom/sonymobile/home/DialogFactory$Action;

    const-string v1, "NON_UNINSTALLABLE"

    const/16 v2, 0xe

    const-string v3, "nonUninstallableDialog"

    const v4, 0x7f0f0025

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/DialogFactory$Action;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->NON_UNINSTALLABLE:Lcom/sonymobile/home/DialogFactory$Action;

    .line 83
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/sonymobile/home/DialogFactory$Action;

    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_PAGE:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_UNLOADABLE_APP:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->APP_ON_EXTERNAL_STORAGE:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->FOLDER_NAME:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->UNINSTALL_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->UPGRADE_CHANGE_GRID_SIZE:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->CANNOT_CUSTOMIZE:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->SET_SORT_MODE:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->SET_HOME_STYLE:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->CONFIRMATION_DIALOG:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->UNINSTALL_APP:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->DISABLE_APP:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->NON_UNINSTALLABLE_APPINFO:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->NON_UNINSTALLABLE:Lcom/sonymobile/home/DialogFactory$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/DialogFactory$Action;->$VALUES:[Lcom/sonymobile/home/DialogFactory$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "dialogTag"    # Ljava/lang/String;
    .param p4, "actionCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p3, p0, Lcom/sonymobile/home/DialogFactory$Action;->mDialogTag:Ljava/lang/String;

    .line 103
    iput p4, p0, Lcom/sonymobile/home/DialogFactory$Action;->mDialogActionCode:I

    .line 104
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/DialogFactory$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Lcom/sonymobile/home/DialogFactory$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/DialogFactory$Action;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/DialogFactory$Action;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/sonymobile/home/DialogFactory$Action;->$VALUES:[Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v0}, [Lcom/sonymobile/home/DialogFactory$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/DialogFactory$Action;

    return-object v0
.end method


# virtual methods
.method public getActionCode()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/sonymobile/home/DialogFactory$Action;->mDialogActionCode:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonymobile/home/DialogFactory$Action;->mDialogTag:Ljava/lang/String;

    return-object v0
.end method
