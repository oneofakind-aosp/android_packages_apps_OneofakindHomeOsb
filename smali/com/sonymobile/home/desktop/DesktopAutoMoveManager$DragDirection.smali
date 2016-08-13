.class public final enum Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;
.super Ljava/lang/Enum;
.source "DesktopAutoMoveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DragDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

.field public static final enum DOWN:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

.field public static final enum LEFT:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

.field public static final enum RIGHT:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

.field public static final enum UP:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->UP:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    new-instance v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->DOWN:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    new-instance v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->LEFT:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    new-instance v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->RIGHT:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->UP:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->DOWN:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->LEFT:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->RIGHT:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->$VALUES:[Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->$VALUES:[Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    invoke-virtual {v0}, [Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    return-object v0
.end method
