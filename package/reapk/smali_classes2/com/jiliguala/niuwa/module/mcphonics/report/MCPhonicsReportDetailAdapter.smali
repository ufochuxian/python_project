.class public Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;,
        Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;,
        Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;,
        Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$MCReportViewHolder;,
        Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field private viewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "lv"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mListData:Ljava/util/List;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->viewType:I

    .line 48
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mType:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    const-string v0, "MC"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    invoke-static {p3}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isB1MC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->viewType:I

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {p3}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isB2MC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->viewType:I

    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->viewType:I

    goto :goto_0

    .line 59
    :cond_3
    const-string v0, "PH"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->viewType:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->onItemClick(Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;)V

    return-void
.end method

.method private goReport(Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;)V
    .locals 4
    .param p1, "dataBean"    # Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;

    .prologue
    .line 257
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "curBabyId":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "key_url"

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->_id:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/jiliguala/niuwa/logic/m/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v2, "SHARE_THUMB"

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->thmb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v2, "SHARE_TTL"

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ttl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v2, "SHARE_DESC"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v2, "SHARE_RID"

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 265
    return-void
.end method

.method private onItemClick(Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;)V
    .locals 1
    .param p1, "dataBean"    # Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->reportLessonReportView(Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->goReport(Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;)V

    .line 216
    :cond_0
    return-void
.end method

.method private reportLessonReportView(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v1, "Source"

    const-string v2, "outline"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Report View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 272
    return-void
.end method

.method private setDrableLeft(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 250
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 251
    .local v0, "left":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 252
    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 253
    return-void
.end method

.method private showTextList(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 12
    .param p2, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 220
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 221
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 222
    .local v1, "childCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 223
    .local v2, "dataSize":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 224
    .local v4, "minSize":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 225
    .local v0, "MaxSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 226
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 227
    .local v6, "textView":Landroid/widget/TextView;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_0
    move v3, v4

    :goto_1
    if-ge v3, v0, :cond_3

    .line 231
    if-le v1, v2, :cond_1

    .line 232
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 233
    .restart local v6    # "textView":Landroid/widget/TextView;
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    .end local v6    # "textView":Landroid/widget/TextView;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 235
    :cond_1
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0b01a7

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 236
    .local v7, "tv":Landroid/widget/TextView;
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 240
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 241
    invoke-virtual {p2, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 245
    .end local v0    # "MaxSize":I
    .end local v1    # "childCount":I
    .end local v2    # "dataSize":I
    .end local v3    # "i":I
    .end local v4    # "minSize":I
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "tv":Landroid/widget/TextView;
    :cond_2
    const/16 v8, 0x8

    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 247
    :cond_3
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 276
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    iget v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->viewType:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->onBindViewHolder(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;I)V
    .locals 11
    .param p1, "holder"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    const v10, 0x7f0803c5

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 99
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mListData:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;

    .line 100
    .local v0, "dataBean":Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->thmb:Ljava/lang/String;

    iget-object v6, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/e/a;->A()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 101
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonTitle:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ttl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonReportImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->getItemViewType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->getItemViewType()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 105
    :cond_0
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonReportImg:Landroid/widget/ImageView;

    const v5, 0x7f08035c

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :goto_0
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->iconRight:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :goto_1
    instance-of v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$MCReportViewHolder;

    if-eqz v3, :cond_9

    move-object v1, p1

    .line 121
    check-cast v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$MCReportViewHolder;

    .line 122
    .local v1, "mcHolder":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$MCReportViewHolder;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    if-nez v3, :cond_5

    move-object v3, v4

    :goto_2
    iget-object v5, v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$MCReportViewHolder;->wordContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v5}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->showTextList(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 125
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    if-nez v3, :cond_7

    :goto_3
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$MCReportViewHolder;->sentenceContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, v3}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->showTextList(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 126
    iget-object v4, v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$MCReportViewHolder;->wordsTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->phrase:Ljava/util/List;

    if-eqz v3, :cond_8

    const-string v3, "\u5355\u8bcd\uff0f\u77ed\u53e5"

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .end local v1    # "mcHolder":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$MCReportViewHolder;
    :cond_1
    :goto_5
    return-void

    .line 107
    :cond_2
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonReportImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->getScoreImageRes()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->isCurrent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 112
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonReportImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonReportImg:Landroid/widget/ImageView;

    const v5, 0x7f08035b

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    :goto_6
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->iconRight:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 115
    :cond_4
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->lessonReportImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 122
    .restart local v1    # "mcHolder":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$MCReportViewHolder;
    :cond_5
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->phrase:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->phrase:Ljava/util/List;

    goto :goto_2

    :cond_6
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->word:Ljava/util/List;

    goto :goto_2

    .line 125
    :cond_7
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->sentence:Ljava/util/List;

    goto :goto_3

    .line 126
    :cond_8
    const-string v3, "\u5355\u8bcd"

    goto :goto_4

    .line 133
    .end local v1    # "mcHolder":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$MCReportViewHolder;
    :cond_9
    instance-of v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;

    if-eqz v3, :cond_10

    move-object v2, p1

    .line 134
    check-cast v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;

    .line 135
    .local v2, "phHolder":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    if-eqz v3, :cond_a

    .line 136
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->shortvowel:Ljava/util/List;

    if-eqz v3, :cond_b

    .line 137
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->alphabetTitle:Landroid/widget/TextView;

    const-string v4, "\u77ed\u5143\u97f3"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->alphabet:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getShortvowelStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_7
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->alphabetfamily:Ljava/util/List;

    if-eqz v3, :cond_d

    .line 150
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->pronunciationTitle:Landroid/widget/TextView;

    const-string v4, "\u540c\u97f5\u5b57\u6bcd\u5bb6\u65cf"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->pronunciation:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getAlphabetFamilyStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_8
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->rhymeword:Ljava/util/List;

    if-eqz v3, :cond_e

    .line 157
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->expandWordTitle:Landroid/widget/TextView;

    const-string v4, "\u540c\u97f5\u8bcd"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->expandWord:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getRhymewordStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_9
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->extrarhymeword:Ljava/util/List;

    if-eqz v3, :cond_f

    .line 164
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->moreExpandWordContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->moreExpandWordTitle:Landroid/widget/TextView;

    const-string v4, "\u6269\u5c55\u540c\u97f5\u8bcd"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->moreExpandWord:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getExtraRhymewordStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_a
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->commonWord:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getSightStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_a
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$2;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 140
    :cond_b
    const-string v3, "L2PH"

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->typ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 141
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->alphabetTitle:Landroid/widget/TextView;

    const-string v4, "\u8f85\u97f3\u7ec4\u5408"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->alphabetTitle:Landroid/widget/TextView;

    invoke-direct {p0, v3, v10}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->setDrableLeft(Landroid/widget/TextView;I)V

    .line 147
    :goto_b
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->alphabet:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getAlphabetStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 144
    :cond_c
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->alphabetTitle:Landroid/widget/TextView;

    const-string v4, "\u5b57\u6bcd"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->alphabetTitle:Landroid/widget/TextView;

    invoke-direct {p0, v3, v10}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->setDrableLeft(Landroid/widget/TextView;I)V

    goto :goto_b

    .line 153
    :cond_d
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->pronunciationTitle:Landroid/widget/TextView;

    const-string v4, "\u8bfb\u97f3"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->pronunciation:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getPronounceStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 160
    :cond_e
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->expandWordTitle:Landroid/widget/TextView;

    const-string v4, "\u62d3\u5c55\u5355\u8bcd"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->expandWord:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getExtendWordStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 168
    :cond_f
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;->moreExpandWordContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_a

    .line 179
    .end local v2    # "phHolder":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;
    :cond_10
    instance-of v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;

    if-eqz v3, :cond_11

    move-object v1, p1

    .line 180
    check-cast v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;

    .line 181
    .local v1, "mcHolder":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->song:Ljava/util/List;

    iget-object v4, v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;->songsContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->showTextList(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 182
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->touch:Ljava/util/List;

    iget-object v4, v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;->touchContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->showTextList(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 183
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$3;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$3;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 189
    .end local v1    # "mcHolder":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;
    :cond_11
    instance-of v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 190
    check-cast v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;

    .line 191
    .local v1, "mcHolder":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->word:Ljava/util/List;

    iget-object v4, v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->wordsContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->showTextList(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 192
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->shortphrase:Ljava/util/List;

    iget-object v4, v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->sentenceContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->showTextList(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 193
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->song:Ljava/util/List;

    if-eqz v3, :cond_12

    .line 194
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->songTitle:Landroid/widget/TextView;

    const-string v4, "\u513f\u6b4c"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->songTitle:Landroid/widget/TextView;

    const v4, 0x7f0803cc

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->setDrableLeft(Landroid/widget/TextView;I)V

    .line 196
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->song:Ljava/util/List;

    iget-object v4, v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->songContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->showTextList(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 202
    :goto_c
    iget-object v3, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$4;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$4;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 198
    :cond_12
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->songTitle:Landroid/widget/TextView;

    const-string v4, "\u4eb2\u5b50\u4e92\u52a8"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->songTitle:Landroid/widget/TextView;

    const v4, 0x7f0803c9

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->setDrableLeft(Landroid/widget/TextView;I)V

    .line 200
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;->ext:Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->interaction:Ljava/util/List;

    iget-object v4, v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->songContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->showTextList(Ljava/util/List;Landroid/view/ViewGroup;)V

    goto :goto_c
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00f8

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "convertView":Landroid/view/View;
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$MCReportViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$MCReportViewHolder;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Landroid/view/View;)V

    .line 94
    .end local v0    # "convertView":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v1

    .line 84
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00fb

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    .restart local v0    # "convertView":Landroid/view/View;
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$PhReportViewHolder;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 87
    .end local v0    # "convertView":Landroid/view/View;
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00f9

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    .restart local v0    # "convertView":Landroid/view/View;
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 90
    .end local v0    # "convertView":Landroid/view/View;
    :cond_3
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00fa

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    .restart local v0    # "convertView":Landroid/view/View;
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;Landroid/view/View;)V

    goto :goto_0
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "templateList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method
