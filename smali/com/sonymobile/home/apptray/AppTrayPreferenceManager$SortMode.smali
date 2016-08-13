.class public final enum Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
.super Ljava/lang/Enum;
.source "AppTrayPreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

.field public static final enum ALPHABETICAL:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

.field public static final enum MOST_USED:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

.field public static final enum OWN_ORDER:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

.field public static final enum RECENTLY_INSTALLED:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

.field public static final enum WORK:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    const-string v1, "ALPHABETICAL"

    const-string v2, "alpha"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->ALPHABETICAL:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 38
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    const-string v1, "MOST_USED"

    const-string v2, "most-used"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->MOST_USED:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 39
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    const-string v1, "RECENTLY_INSTALLED"

    const-string v2, "recent-inst"

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->RECENTLY_INSTALLED:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 40
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    const-string v1, "OWN_ORDER"

    const-string v2, "free"

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->OWN_ORDER:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 41
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    const-string v1, "WORK"

    const-string v2, "work"

    invoke-direct {v0, v1, v7, v2}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->WORK:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->ALPHABETICAL:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->MOST_USED:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->RECENTLY_INSTALLED:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->OWN_ORDER:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->WORK:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->$VALUES:[Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->mText:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static getSortMode(Ljava/lang/String;)Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->values()[Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 67
    .local v3, "mode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    return-object v3

    .line 66
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v3    # "mode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Not a valid sort mode"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->$VALUES:[Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    invoke-virtual {v0}, [Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->mText:Ljava/lang/String;

    return-object v0
.end method
