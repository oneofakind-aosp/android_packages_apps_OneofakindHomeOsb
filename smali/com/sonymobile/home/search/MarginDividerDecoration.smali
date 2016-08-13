.class Lcom/sonymobile/home/search/MarginDividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "MarginDividerDecoration.java"


# instance fields
.field private final mHeight:I

.field private final mMargin:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0b00f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/search/MarginDividerDecoration;->mHeight:I

    .line 41
    const v1, 0x7f0b00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/search/MarginDividerDecoration;->mMargin:I

    .line 44
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/search/MarginDividerDecoration;->mPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v1, p0, Lcom/sonymobile/home/search/MarginDividerDecoration;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f0e0057

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    return-void
.end method

.method private static isLast(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 93
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 94
    .local v0, "itemPosition":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static shouldBeDecorated(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 78
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 79
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v1, v0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;

    return v1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-static {p2, p3}, Lcom/sonymobile/home/search/MarginDividerDecoration;->shouldBeDecorated(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3, p4}, Lcom/sonymobile/home/search/MarginDividerDecoration;->isLast(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget v0, p0, Lcom/sonymobile/home/search/MarginDividerDecoration;->mHeight:I

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 106
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v10

    .line 57
    .local v10, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_1

    .line 58
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 59
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/sonymobile/home/search/MarginDividerDecoration;->shouldBeDecorated(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v9, v0, v1}, Lcom/sonymobile/home/search/MarginDividerDecoration;->isLast(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/home/search/MarginDividerDecoration;->mHeight:I

    sub-int v14, v2, v3

    .line 61
    .local v14, "top":I
    iget v2, p0, Lcom/sonymobile/home/search/MarginDividerDecoration;->mHeight:I

    add-int v8, v14, v2

    .line 62
    .local v8, "bottom":I
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/home/search/MarginDividerDecoration;->mMargin:I

    add-int v12, v2, v3

    .line 63
    .local v12, "left":I
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/home/search/MarginDividerDecoration;->mMargin:I

    sub-int v13, v2, v3

    .line 65
    .local v13, "right":I
    int-to-float v3, v12

    int-to-float v4, v14

    int-to-float v5, v13

    int-to-float v6, v8

    iget-object v7, p0, Lcom/sonymobile/home/search/MarginDividerDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 57
    .end local v8    # "bottom":I
    .end local v12    # "left":I
    .end local v13    # "right":I
    .end local v14    # "top":I
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 68
    .end local v9    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method
