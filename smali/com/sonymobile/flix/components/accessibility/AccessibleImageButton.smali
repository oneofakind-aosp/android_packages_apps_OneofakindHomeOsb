.class public Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;
.super Lcom/sonymobile/flix/components/ImageButton;
.source "AccessibleImageButton.java"

# interfaces
.implements Lcom/sonymobile/flix/components/accessibility/AccessibleButtonListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v0}, Lcom/sonymobile/flix/components/ImageButton;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;ILandroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "resId"    # I
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sonymobile/flix/components/ImageButton;-><init>(Lcom/sonymobile/flix/components/Scene;IILandroid/graphics/BitmapFactory$Options;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected createInternalButton(Lcom/sonymobile/flix/components/Scene;)Lcom/sonymobile/flix/components/Button;
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 100
    new-instance v0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    return-object v0
.end method

.method public onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/AccessibleButton;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;II)Z
    .locals 1
    .param p1, "button"    # Lcom/sonymobile/flix/components/accessibility/AccessibleButton;
    .param p2, "source"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p3, "event"    # I
    .param p4, "direction"    # I

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;->mButton:Lcom/sonymobile/flix/components/Button;

    check-cast v0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setDescription(Ljava/lang/String;)V

    .line 111
    return-void
.end method
