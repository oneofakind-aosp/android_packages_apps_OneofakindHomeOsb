.class public final enum Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
.super Ljava/lang/Enum;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/shortcut/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

.field public static final enum CREATED:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

.field public static final enum EXISTS:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

.field public static final enum NO_SPACE:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

.field public static final enum UNDEFINED_ERROR:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;


# instance fields
.field private final mMessageResourceId:I

.field private mShortcutLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    const-string v1, "CREATED"

    const v2, 0x7f0800f3

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->CREATED:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    .line 55
    new-instance v0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    const-string v1, "EXISTS"

    const v2, 0x7f0800f2

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->EXISTS:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    .line 57
    new-instance v0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    const-string v1, "NO_SPACE"

    const v2, 0x7f080099

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->NO_SPACE:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    .line 59
    new-instance v0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    const-string v1, "UNDEFINED_ERROR"

    invoke-direct {v0, v1, v6, v3}, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->UNDEFINED_ERROR:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    sget-object v1, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->CREATED:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->EXISTS:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->NO_SPACE:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->UNDEFINED_ERROR:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->$VALUES:[Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->mMessageResourceId:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->mShortcutLabel:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->$VALUES:[Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    invoke-virtual {v0}, [Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    return-object v0
.end method


# virtual methods
.method public getMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iget v0, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->mMessageResourceId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->mMessageResourceId:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->mShortcutLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setShortcutLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->mShortcutLabel:Ljava/lang/String;

    .line 81
    return-void
.end method
