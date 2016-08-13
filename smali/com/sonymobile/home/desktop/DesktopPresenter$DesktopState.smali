.class public final enum Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;
.super Ljava/lang/Enum;
.source "DesktopPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DesktopState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

.field public static final enum CUI_MAIN_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

.field public static final enum CUI_SUB_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

.field public static final enum EDIT:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

.field public static final enum NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .line 152
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->EDIT:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .line 157
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    const-string v1, "CUI_MAIN_MENU"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_MAIN_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .line 162
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    const-string v1, "CUI_SUB_MENU"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_SUB_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .line 142
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->EDIT:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_MAIN_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_SUB_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->$VALUES:[Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

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
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    const-class v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->$VALUES:[Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {v0}, [Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    return-object v0
.end method
