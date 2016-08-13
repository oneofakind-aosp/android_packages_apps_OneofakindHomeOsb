.class final enum Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;
.super Ljava/lang/Enum;
.source "DesktopAutoMover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopAutoMover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AutoMoveStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

.field public static final enum BUMP:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

.field public static final enum NEAREST:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

.field public static final enum SWAP:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

.field public static final enum YIELD:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    const-string v1, "BUMP"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->BUMP:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    new-instance v0, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    const-string v1, "YIELD"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->YIELD:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    new-instance v0, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    const-string v1, "SWAP"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->SWAP:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    new-instance v0, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    const-string v1, "NEAREST"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->NEAREST:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->BUMP:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->YIELD:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->SWAP:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->NEAREST:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->$VALUES:[Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->$VALUES:[Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    invoke-virtual {v0}, [Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    return-object v0
.end method
