.class public final Lcom/sonymobile/home/resourceprovider/BadgeProviderContract;
.super Ljava/lang/Object;
.source "BadgeProviderContract.java"


# static fields
.field private static final BASE_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "content://com.sonymobile.home.resourceprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/resourceprovider/BadgeProviderContract;->BASE_URI:Landroid/net/Uri;

    .line 67
    sget-object v0, Lcom/sonymobile/home/resourceprovider/BadgeProviderContract;->BASE_URI:Landroid/net/Uri;

    const-string v1, "badge"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/resourceprovider/BadgeProviderContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
