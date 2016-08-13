.class public final enum Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;
.super Ljava/lang/Enum;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

.field public static final enum CANCELED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

.field public static final enum DRAGGED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

.field public static final enum DRAGGED_INSIDE_TOUCH_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

.field public static final enum LONG_PRESSED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

.field public static final enum PRESSED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

.field public static final enum RELEASED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

.field public static final enum STARTED_DISABLED_DRAG:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

.field public static final enum STARTED_DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

.field public static final enum STARTED_DRAGGING:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

.field public static final enum STARTED_DRAGGING_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

.field public static final enum SWIPED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    const-string v1, "PRESSED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->PRESSED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .line 41
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    const-string v1, "LONG_PRESSED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->LONG_PRESSED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .line 43
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    const-string v1, "DRAGGED_INSIDE_TOUCH_SLOP"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->DRAGGED_INSIDE_TOUCH_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .line 45
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    const-string v1, "STARTED_DRAGGING"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DRAGGING:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .line 47
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    const-string v1, "STARTED_DRAGGING_OUTSIDE_DRAG_SLOP"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DRAGGING_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .line 49
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    const-string v1, "DRAGGED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->DRAGGED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .line 51
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    const-string v1, "STARTED_DISABLED_DRAG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DISABLED_DRAG:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .line 53
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    const-string v1, "STARTED_DISABLED_DRAG_OUTSIDE_DRAG_SLOP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .line 55
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    const-string v1, "SWIPED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->SWIPED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .line 57
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    const-string v1, "RELEASED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->RELEASED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .line 59
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    const-string v1, "CANCELED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->CANCELED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .line 38
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    sget-object v1, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->PRESSED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->LONG_PRESSED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->DRAGGED_INSIDE_TOUCH_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DRAGGING:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DRAGGING_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->DRAGGED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DISABLED_DRAG:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->SWIPED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->RELEASED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->CANCELED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->$VALUES:[Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->$VALUES:[Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {v0}, [Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    return-object v0
.end method
