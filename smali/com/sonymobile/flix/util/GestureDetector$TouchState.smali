.class public final enum Lcom/sonymobile/flix/util/GestureDetector$TouchState;
.super Ljava/lang/Enum;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TouchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/flix/util/GestureDetector$TouchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/flix/util/GestureDetector$TouchState;

.field public static final enum DISABLED_DRAG:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

.field public static final enum DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

.field public static final enum DRAGGING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

.field public static final enum LONG_PRESSED:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

.field public static final enum PRESSED:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

.field public static final enum RESTING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    const-string v1, "RESTING"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/flix/util/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->RESTING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 27
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    const-string v1, "PRESSED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/flix/util/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->PRESSED:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 29
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    const-string v1, "LONG_PRESSED"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/flix/util/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->LONG_PRESSED:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 31
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    const-string v1, "DRAGGING"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/flix/util/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DRAGGING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 33
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    const-string v1, "DISABLED_DRAG"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/flix/util/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DISABLED_DRAG:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 35
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    const-string v1, "DISABLED_DRAG_OUTSIDE_DRAG_SLOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/flix/util/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v1, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->RESTING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->PRESSED:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->LONG_PRESSED:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DRAGGING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DISABLED_DRAG:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->$VALUES:[Lcom/sonymobile/flix/util/GestureDetector$TouchState;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/flix/util/GestureDetector$TouchState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/flix/util/GestureDetector$TouchState;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->$VALUES:[Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    invoke-virtual {v0}, [Lcom/sonymobile/flix/util/GestureDetector$TouchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    return-object v0
.end method
