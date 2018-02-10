.class public Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;
.super Lcom/c/a/a/a/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/a/b/g$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/c/a/a/a/c",
        "<",
        "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;",
        ">;",
        "Lcom/c/a/a/a/e;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/a/b/g$a;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;",
            ">;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;>;>;"
    const v0, 0x7f0b00f5

    invoke-direct {p0, v0, p1}, Lcom/c/a/a/a/c;-><init>(ILjava/util/List;)V

    .line 30
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method protected convert(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;)V
    .locals 9
    .param p1, "helper"    # Lcom/c/a/a/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/a/a/a/e;",
            "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "item":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;>;"
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 36
    invoke-virtual {p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 39
    :pswitch_0
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;

    .line 41
    .local v4, "record":Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;
    const v5, 0x7f0900a1

    invoke-virtual {p1, v5}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 42
    .local v0, "bg":Landroid/widget/RelativeLayout;
    const v5, 0x7f0901a0

    invoke-virtual {p1, v5}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    .local v1, "day":Landroid/widget/TextView;
    const v5, 0x7f090518

    invoke-virtual {p1, v5}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 45
    .local v2, "doneStar":Landroid/widget/ImageView;
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->isDone()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803a5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    :cond_0
    :goto_1
    const v5, 0x7f090239

    invoke-virtual {p1, v5}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 60
    .local v3, "gitIcon":Landroid/widget/ImageView;
    const v5, 0x7f090430

    invoke-virtual {v3, v5, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 62
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->hasGift()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 63
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->isUnAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 66
    const v5, 0x7f0801a9

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    :goto_2
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 49
    .end local v3    # "gitIcon":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->isUnAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060057

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->isUnDone()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 68
    .restart local v3    # "gitIcon":Landroid/widget/ImageView;
    :cond_3
    const v5, 0x7f0801a8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 71
    :cond_4
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5929"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic convert(Lcom/c/a/a/a/e;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p2, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->convert(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;)V

    return-void
.end method

.method public getDialog(Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;)Lcom/jiliguala/niuwa/a/b/g;
    .locals 3
    .param p1, "record"    # Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/jiliguala/niuwa/a/b/g;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/a/b/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/g;->b(Z)V

    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/a/b/g;->a(Lcom/jiliguala/niuwa/a/b/g$a;)V

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->isUnDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    const v1, 0x7f0801e6

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/g;->a(I)V

    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    const v1, 0x7f080368

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/g;->b(I)V

    .line 106
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    const v1, 0x7f060058

    const v2, 0x7f0800b2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/a/b/g;->a(II)V

    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->gift:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Gift;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Gift;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/g;->c(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->gift:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Gift;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Gift;->ttl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/g;->b(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0f00fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/g;->d(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    return-object v0

    .line 102
    :cond_3
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;->isUnAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    const v1, 0x7f0801e7

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/g;->a(I)V

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    const v1, 0x7f080364

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/g;->b(I)V

    goto :goto_0
.end method

.method public onBtnClick()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/g;->b()V

    .line 118
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    const v2, 0x7f090430

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 86
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 87
    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;

    .line 88
    .local v0, "record":Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->getDialog(Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;)Lcom/jiliguala/niuwa/a/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/a/b/g;->a()V

    .line 90
    .end local v0    # "record":Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;
    :cond_0
    return-void
.end method
