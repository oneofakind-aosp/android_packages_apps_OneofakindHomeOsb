.class public final enum Lcom/sonymobile/home/settings/UserSettings$PageTransition;
.super Ljava/lang/Enum;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/settings/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageTransition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/settings/UserSettings$PageTransition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/settings/UserSettings$PageTransition;

.field public static final enum CONCAVE:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

.field public static final enum CONVEX:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

.field public static final enum FLAT:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

.field public static final enum FLOW:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

.field public static final enum WINDMILL:Lcom/sonymobile/home/settings/UserSettings$PageTransition;


# instance fields
.field private final mAnimationRedId:I

.field private final mTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    new-instance v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    const-string v1, "FLAT"

    const v2, 0x7f020091

    const v3, 0x7f0800fd

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->FLAT:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .line 177
    new-instance v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    const-string v1, "FLOW"

    const v2, 0x7f020092

    const v3, 0x7f0800fe

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->FLOW:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .line 178
    new-instance v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    const-string v1, "CONCAVE"

    const v2, 0x7f02008f

    const v3, 0x7f0800fb

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->CONCAVE:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .line 179
    new-instance v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    const-string v1, "CONVEX"

    const v2, 0x7f020090

    const v3, 0x7f0800fc

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->CONVEX:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .line 180
    new-instance v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    const-string v1, "WINDMILL"

    const v2, 0x7f020094

    const v3, 0x7f0800ff

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->WINDMILL:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .line 174
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    sget-object v1, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->FLAT:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->FLOW:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->CONCAVE:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->CONVEX:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->WINDMILL:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    aput-object v1, v0, v8

    sput-object v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->$VALUES:[Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "animationResId"    # I
    .param p4, "titleResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 186
    iput p3, p0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->mAnimationRedId:I

    .line 187
    iput p4, p0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->mTitleResId:I

    .line 188
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 174
    const-class v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->$VALUES:[Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    invoke-virtual {v0}, [Lcom/sonymobile/home/settings/UserSettings$PageTransition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    return-object v0
.end method


# virtual methods
.method public getAnimationResId()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->mAnimationRedId:I

    return v0
.end method

.method public getTitleResId()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->mTitleResId:I

    return v0
.end method
