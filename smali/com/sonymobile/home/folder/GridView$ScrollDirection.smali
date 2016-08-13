.class public final enum Lcom/sonymobile/home/folder/GridView$ScrollDirection;
.super Ljava/lang/Enum;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/folder/GridView$ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/folder/GridView$ScrollDirection;

.field public static final enum SCROLL_DIRECTION_DOWN:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

.field public static final enum SCROLL_DIRECTION_LEFT:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

.field public static final enum SCROLL_DIRECTION_RIGHT:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

.field public static final enum SCROLL_DIRECTION_UP:Lcom/sonymobile/home/folder/GridView$ScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    const-string v1, "SCROLL_DIRECTION_UP"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/folder/GridView$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_UP:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    .line 65
    new-instance v0, Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    const-string v1, "SCROLL_DIRECTION_DOWN"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/folder/GridView$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    .line 66
    new-instance v0, Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    const-string v1, "SCROLL_DIRECTION_RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/folder/GridView$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_RIGHT:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    .line 67
    new-instance v0, Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    const-string v1, "SCROLL_DIRECTION_LEFT"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/home/folder/GridView$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_LEFT:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    sget-object v1, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_UP:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_RIGHT:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_LEFT:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->$VALUES:[Lcom/sonymobile/home/folder/GridView$ScrollDirection;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/folder/GridView$ScrollDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/folder/GridView$ScrollDirection;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->$VALUES:[Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    invoke-virtual {v0}, [Lcom/sonymobile/home/folder/GridView$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    return-object v0
.end method
