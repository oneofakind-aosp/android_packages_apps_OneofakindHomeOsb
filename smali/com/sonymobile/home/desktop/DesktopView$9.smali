.class synthetic Lcom/sonymobile/home/desktop/DesktopView$9;
.super Ljava/lang/Object;
.source "DesktopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonymobile$flix$util$GestureDetector$GestureEvent:[I

.field static final synthetic $SwitchMap$com$sonymobile$home$desktop$DesktopView$DesktopZoomLevel:[I

.field static final synthetic $SwitchMap$com$sonymobile$home$settings$UserSettings$PageTransition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1836
    invoke-static {}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->values()[Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$flix$util$GestureDetector$GestureEvent:[I

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$flix$util$GestureDetector$GestureEvent:[I

    sget-object v1, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->CANCELED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$flix$util$GestureDetector$GestureEvent:[I

    sget-object v1, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->RELEASED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    .line 1051
    :goto_1
    invoke-static {}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->values()[Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$settings$UserSettings$PageTransition:[I

    :try_start_2
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$settings$UserSettings$PageTransition:[I

    sget-object v1, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->FLOW:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    invoke-virtual {v1}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$settings$UserSettings$PageTransition:[I

    sget-object v1, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->CONCAVE:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    invoke-virtual {v1}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$settings$UserSettings$PageTransition:[I

    sget-object v1, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->CONVEX:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    invoke-virtual {v1}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$settings$UserSettings$PageTransition:[I

    sget-object v1, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->WINDMILL:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    invoke-virtual {v1}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$settings$UserSettings$PageTransition:[I

    sget-object v1, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->FLAT:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    invoke-virtual {v1}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    .line 486
    :goto_6
    invoke-static {}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->values()[Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$desktop$DesktopView$DesktopZoomLevel:[I

    :try_start_7
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$desktop$DesktopView$DesktopZoomLevel:[I

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->HIGH:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$desktop$DesktopView$DesktopZoomLevel:[I

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->LOW:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$desktop$DesktopView$DesktopZoomLevel:[I

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    .line 1051
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2

    .line 1836
    :catch_8
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v0

    goto/16 :goto_0
.end method
