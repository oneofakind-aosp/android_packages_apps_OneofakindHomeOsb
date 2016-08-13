.class public Lcom/sonymobile/home/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method public static clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 35
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    .line 36
    move p0, p1

    .line 40
    :cond_0
    :goto_0
    return p0

    .line 37
    :cond_1
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 38
    move p0, p2

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 18
    if-ge p0, p1, :cond_1

    .line 19
    move p0, p1

    .line 23
    :cond_0
    :goto_0
    return p0

    .line 20
    :cond_1
    if-le p0, p2, :cond_0

    .line 21
    move p0, p2

    goto :goto_0
.end method

.method public static max(III)I
    .locals 1
    .param p0, "i1"    # I
    .param p1, "i2"    # I
    .param p2, "i3"    # I

    .prologue
    .line 49
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "f1"    # F
    .param p1, "f2"    # F
    .param p2, "f3"    # F

    .prologue
    .line 45
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method
