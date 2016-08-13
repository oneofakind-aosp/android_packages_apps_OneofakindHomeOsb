.class public final enum Lcom/sonymobile/home/configuration/ConfigExceptionReason;
.super Ljava/lang/Enum;
.source "ConfigExceptionReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/configuration/ConfigExceptionReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/configuration/ConfigExceptionReason;

.field public static final enum BOUNDS:Lcom/sonymobile/home/configuration/ConfigExceptionReason;

.field public static final enum OVERLAP:Lcom/sonymobile/home/configuration/ConfigExceptionReason;


# instance fields
.field final mExceptionReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    const-string v1, "OVERLAP"

    const-string v2, "Items overlaps"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/home/configuration/ConfigExceptionReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/configuration/ConfigExceptionReason;->OVERLAP:Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    .line 12
    new-instance v0, Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    const-string v1, "BOUNDS"

    const-string v2, "Item doesn\'t match the bounds"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/home/configuration/ConfigExceptionReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/configuration/ConfigExceptionReason;->BOUNDS:Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    sget-object v1, Lcom/sonymobile/home/configuration/ConfigExceptionReason;->OVERLAP:Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/configuration/ConfigExceptionReason;->BOUNDS:Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/home/configuration/ConfigExceptionReason;->$VALUES:[Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/sonymobile/home/configuration/ConfigExceptionReason;->mExceptionReason:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/configuration/ConfigExceptionReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/configuration/ConfigExceptionReason;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/sonymobile/home/configuration/ConfigExceptionReason;->$VALUES:[Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    invoke-virtual {v0}, [Lcom/sonymobile/home/configuration/ConfigExceptionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    return-object v0
.end method


# virtual methods
.method public getExceptionReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/home/configuration/ConfigExceptionReason;->mExceptionReason:Ljava/lang/String;

    return-object v0
.end method
