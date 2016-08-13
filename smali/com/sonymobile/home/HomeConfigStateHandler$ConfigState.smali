.class public final enum Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
.super Ljava/lang/Enum;
.source "HomeConfigStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/HomeConfigStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

.field public static final enum ONGOING_CHANGE:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

.field public static final enum ONGOING_FIRST_INITIALIZATION:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

.field public static final enum UNCHANGED:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    const-string v1, "ONGOING_CHANGE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->ONGOING_CHANGE:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    new-instance v0, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    const-string v1, "ONGOING_FIRST_INITIALIZATION"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->ONGOING_FIRST_INITIALIZATION:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    new-instance v0, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    const-string v1, "UNCHANGED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->UNCHANGED:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    sget-object v1, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->ONGOING_CHANGE:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->ONGOING_FIRST_INITIALIZATION:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->UNCHANGED:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->$VALUES:[Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->$VALUES:[Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    invoke-virtual {v0}, [Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    return-object v0
.end method
