.class public abstract enum Lcom/sonymobile/home/stage/StageItemMover;
.super Ljava/lang/Enum;
.source "StageItemMover.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/stage/StageItemMover;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/stage/StageItemMover;

.field public static final enum DOWN:Lcom/sonymobile/home/stage/StageItemMover;

.field public static final enum LEFT:Lcom/sonymobile/home/stage/StageItemMover;

.field public static final enum RIGHT:Lcom/sonymobile/home/stage/StageItemMover;

.field public static final enum UP:Lcom/sonymobile/home/stage/StageItemMover;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/sonymobile/home/stage/StageItemMover$1;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/stage/StageItemMover$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/stage/StageItemMover;->DOWN:Lcom/sonymobile/home/stage/StageItemMover;

    .line 33
    new-instance v0, Lcom/sonymobile/home/stage/StageItemMover$2;

    const-string v1, "UP"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/stage/StageItemMover$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/stage/StageItemMover;->UP:Lcom/sonymobile/home/stage/StageItemMover;

    .line 42
    new-instance v0, Lcom/sonymobile/home/stage/StageItemMover$3;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/stage/StageItemMover$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/stage/StageItemMover;->RIGHT:Lcom/sonymobile/home/stage/StageItemMover;

    .line 51
    new-instance v0, Lcom/sonymobile/home/stage/StageItemMover$4;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/home/stage/StageItemMover$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/stage/StageItemMover;->LEFT:Lcom/sonymobile/home/stage/StageItemMover;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/home/stage/StageItemMover;

    sget-object v1, Lcom/sonymobile/home/stage/StageItemMover;->DOWN:Lcom/sonymobile/home/stage/StageItemMover;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/home/stage/StageItemMover;->UP:Lcom/sonymobile/home/stage/StageItemMover;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/stage/StageItemMover;->RIGHT:Lcom/sonymobile/home/stage/StageItemMover;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/home/stage/StageItemMover;->LEFT:Lcom/sonymobile/home/stage/StageItemMover;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/home/stage/StageItemMover;->$VALUES:[Lcom/sonymobile/home/stage/StageItemMover;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sonymobile/home/stage/StageItemMover$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/sonymobile/home/stage/StageItemMover$1;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/stage/StageItemMover;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p1, "x1"    # Lcom/sonymobile/home/stage/StageModel;

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/sonymobile/home/stage/StageItemMover;->decrementPosition(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p1, "x1"    # Lcom/sonymobile/home/stage/StageModel;

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/sonymobile/home/stage/StageItemMover;->incrementPosition(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z

    move-result v0

    return v0
.end method

.method private static decrementPosition(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z
    .locals 3
    .param p0, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p1, "stageModel"    # Lcom/sonymobile/home/stage/StageModel;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 61
    .local v0, "intendedLocation":Lcom/sonymobile/home/data/ItemLocation;
    iget v1, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 62
    iget v1, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-lez v1, :cond_0

    invoke-static {v0, p1}, Lcom/sonymobile/home/stage/StageItemMover;->isLocationFree(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget v1, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 65
    :cond_0
    iget v1, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget v2, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static incrementPosition(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z
    .locals 3
    .param p0, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p1, "stageModel"    # Lcom/sonymobile/home/stage/StageModel;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 71
    .local v0, "intendedLocation":Lcom/sonymobile/home/data/ItemLocation;
    iget v1, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 72
    iget v1, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-virtual {p1}, Lcom/sonymobile/home/stage/StageModel;->getMaximumMovementRange()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v0, p1}, Lcom/sonymobile/home/stage/StageItemMover;->isLocationFree(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget v1, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 76
    :cond_0
    iget v1, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget v2, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isLocationFree(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z
    .locals 1
    .param p0, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p1, "stageModel"    # Lcom/sonymobile/home/stage/StageModel;

    .prologue
    .line 90
    invoke-virtual {p1, p0}, Lcom/sonymobile/home/stage/StageModel;->getItemAtLocation(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/stage/StageItemMover;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonymobile/home/stage/StageItemMover;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/stage/StageItemMover;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/stage/StageItemMover;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonymobile/home/stage/StageItemMover;->$VALUES:[Lcom/sonymobile/home/stage/StageItemMover;

    invoke-virtual {v0}, [Lcom/sonymobile/home/stage/StageItemMover;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/stage/StageItemMover;

    return-object v0
.end method


# virtual methods
.method public move(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/stage/StageModel;)Z
    .locals 2
    .param p1, "itemToMove"    # Lcom/sonymobile/home/data/Item;
    .param p2, "stageModel"    # Lcom/sonymobile/home/stage/StageModel;

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 85
    .local v0, "location":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {p0, v0, p2}, Lcom/sonymobile/home/stage/StageItemMover;->performMove(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z

    move-result v1

    return v1
.end method

.method protected abstract performMove(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z
.end method
