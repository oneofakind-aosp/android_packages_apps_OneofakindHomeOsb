.class public final enum Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;
.super Ljava/lang/Enum;
.source "TutorialPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/tutorial/TutorialPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Navigation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

.field public static final enum FROM:Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

.field public static final enum TO:Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    const-string v1, "FROM"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;->FROM:Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    new-instance v0, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    const-string v1, "TO"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;->TO:Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    sget-object v1, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;->FROM:Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;->TO:Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;->$VALUES:[Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;->$VALUES:[Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    invoke-virtual {v0}, [Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    return-object v0
.end method
