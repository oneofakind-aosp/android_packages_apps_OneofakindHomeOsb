.class public final enum Lcom/sonymobile/home/configuration/Layers;
.super Ljava/lang/Enum;
.source "Layers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/configuration/Layers;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/configuration/Layers;

.field public static final enum APPTRAY:Lcom/sonymobile/home/configuration/Layers;

.field public static final enum DESKTOP:Lcom/sonymobile/home/configuration/Layers;

.field public static final enum DESKTOP_AUTOMATIC:Lcom/sonymobile/home/configuration/Layers;

.field public static final enum STAGE:Lcom/sonymobile/home/configuration/Layers;

.field public static final enum STAGE_DYNAMIC:Lcom/sonymobile/home/configuration/Layers;


# instance fields
.field final mLayer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/sonymobile/home/configuration/Layers;

    const-string v1, "DESKTOP"

    const-string v2, "desktop"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/home/configuration/Layers;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/configuration/Layers;->DESKTOP:Lcom/sonymobile/home/configuration/Layers;

    .line 14
    new-instance v0, Lcom/sonymobile/home/configuration/Layers;

    const-string v1, "DESKTOP_AUTOMATIC"

    const-string v2, "desktop_automatic"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/home/configuration/Layers;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/configuration/Layers;->DESKTOP_AUTOMATIC:Lcom/sonymobile/home/configuration/Layers;

    .line 15
    new-instance v0, Lcom/sonymobile/home/configuration/Layers;

    const-string v1, "STAGE"

    const-string v2, "stage"

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/home/configuration/Layers;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/configuration/Layers;->STAGE:Lcom/sonymobile/home/configuration/Layers;

    .line 16
    new-instance v0, Lcom/sonymobile/home/configuration/Layers;

    const-string v1, "STAGE_DYNAMIC"

    const-string v2, "stage_dynamic"

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/home/configuration/Layers;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/configuration/Layers;->STAGE_DYNAMIC:Lcom/sonymobile/home/configuration/Layers;

    .line 17
    new-instance v0, Lcom/sonymobile/home/configuration/Layers;

    const-string v1, "APPTRAY"

    const-string v2, "apptray"

    invoke-direct {v0, v1, v7, v2}, Lcom/sonymobile/home/configuration/Layers;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/configuration/Layers;->APPTRAY:Lcom/sonymobile/home/configuration/Layers;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/home/configuration/Layers;

    sget-object v1, Lcom/sonymobile/home/configuration/Layers;->DESKTOP:Lcom/sonymobile/home/configuration/Layers;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/configuration/Layers;->DESKTOP_AUTOMATIC:Lcom/sonymobile/home/configuration/Layers;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/home/configuration/Layers;->STAGE:Lcom/sonymobile/home/configuration/Layers;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/home/configuration/Layers;->STAGE_DYNAMIC:Lcom/sonymobile/home/configuration/Layers;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/home/configuration/Layers;->APPTRAY:Lcom/sonymobile/home/configuration/Layers;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonymobile/home/configuration/Layers;->$VALUES:[Lcom/sonymobile/home/configuration/Layers;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "layer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/sonymobile/home/configuration/Layers;->mLayer:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/configuration/Layers;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/sonymobile/home/configuration/Layers;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/configuration/Layers;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/configuration/Layers;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sonymobile/home/configuration/Layers;->$VALUES:[Lcom/sonymobile/home/configuration/Layers;

    invoke-virtual {v0}, [Lcom/sonymobile/home/configuration/Layers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/configuration/Layers;

    return-object v0
.end method


# virtual methods
.method public getLayer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/home/configuration/Layers;->mLayer:Ljava/lang/String;

    return-object v0
.end method
