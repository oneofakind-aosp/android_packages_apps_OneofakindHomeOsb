.class public final enum Lcom/sonymobile/home/search/entry/SearchEntry$Type;
.super Ljava/lang/Enum;
.source "SearchEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/search/entry/SearchEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/search/entry/SearchEntry$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/search/entry/SearchEntry$Type;

.field public static final enum LOCAL_HEADING:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

.field public static final enum LOCAL_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

.field public static final enum ONLINE_HEADING:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

.field public static final enum ONLINE_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

.field public static final enum PROMOTED_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

.field public static final enum SEARCH_ON_GOOGLE_PLAY_BUTTON:Lcom/sonymobile/home/search/entry/SearchEntry$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    const-string v1, "LOCAL_HEADING"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/search/entry/SearchEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->LOCAL_HEADING:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    .line 23
    new-instance v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    const-string v1, "LOCAL_SEARCH_RESULT"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/search/entry/SearchEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->LOCAL_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    .line 24
    new-instance v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    const-string v1, "ONLINE_HEADING"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/home/search/entry/SearchEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ONLINE_HEADING:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    .line 25
    new-instance v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    const-string v1, "PROMOTED_SEARCH_RESULT"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/home/search/entry/SearchEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->PROMOTED_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    .line 26
    new-instance v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    const-string v1, "ONLINE_SEARCH_RESULT"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/home/search/entry/SearchEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ONLINE_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    .line 27
    new-instance v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    const-string v1, "SEARCH_ON_GOOGLE_PLAY_BUTTON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/search/entry/SearchEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->SEARCH_ON_GOOGLE_PLAY_BUTTON:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    sget-object v1, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->LOCAL_HEADING:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->LOCAL_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ONLINE_HEADING:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->PROMOTED_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ONLINE_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->SEARCH_ON_GOOGLE_PLAY_BUTTON:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->$VALUES:[Lcom/sonymobile/home/search/entry/SearchEntry$Type;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/search/entry/SearchEntry$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/search/entry/SearchEntry$Type;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->$VALUES:[Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    invoke-virtual {v0}, [Lcom/sonymobile/home/search/entry/SearchEntry$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    return-object v0
.end method
