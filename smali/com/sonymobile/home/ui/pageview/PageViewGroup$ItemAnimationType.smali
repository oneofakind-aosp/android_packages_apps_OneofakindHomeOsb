.class public final enum Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;
.super Ljava/lang/Enum;
.source "PageViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/ui/pageview/PageViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemAnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

.field public static final enum ITEM_FADEOUT_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

.field public static final enum ITEM_NO_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

.field public static final enum ITEM_POPUP_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

.field public static final enum ITEM_RANDOM_POPUP_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

.field public static final enum ITEM_TRANSLATE_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    const-string v1, "ITEM_TRANSLATE_ANIMATION"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_TRANSLATE_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    const-string v1, "ITEM_RANDOM_POPUP_ANIMATION"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_RANDOM_POPUP_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    const-string v1, "ITEM_POPUP_ANIMATION"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_POPUP_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    .line 90
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    const-string v1, "ITEM_FADEOUT_ANIMATION"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_FADEOUT_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    const-string v1, "ITEM_NO_ANIMATION"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_NO_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_TRANSLATE_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_RANDOM_POPUP_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_POPUP_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_FADEOUT_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_NO_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->$VALUES:[Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->$VALUES:[Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    invoke-virtual {v0}, [Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    return-object v0
.end method
