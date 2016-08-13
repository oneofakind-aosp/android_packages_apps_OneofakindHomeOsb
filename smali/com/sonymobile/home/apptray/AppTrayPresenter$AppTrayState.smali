.class public final enum Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;
.super Ljava/lang/Enum;
.source "AppTrayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppTrayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

.field public static final enum APPTRAY_STATE_EDIT:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

.field public static final enum APPTRAY_STATE_NORMAL:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    const-string v1, "APPTRAY_STATE_EDIT"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_EDIT:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    const-string v1, "APPTRAY_STATE_NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_NORMAL:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_EDIT:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_NORMAL:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->$VALUES:[Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    const-class v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->$VALUES:[Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-virtual {v0}, [Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    return-object v0
.end method
