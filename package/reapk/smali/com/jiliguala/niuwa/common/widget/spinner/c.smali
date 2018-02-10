.class public abstract Lcom/jiliguala/niuwa/common/widget/spinner/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/spinner/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/spinner/c;, "Lcom/jiliguala/niuwa/common/widget/spinner/c<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/c;->a:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/spinner/c;, "Lcom/jiliguala/niuwa/common/widget/spinner/c<TT;>;"
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/c;->b:I

    return v0
.end method

.method public abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public b(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 60
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/spinner/c;, "Lcom/jiliguala/niuwa/common/widget/spinner/c<TT;>;"
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/c;->b:I

    .line 61
    return-void
.end method

.method public abstract getCount()I
.end method

.method public abstract getItem(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 65
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/spinner/c;, "Lcom/jiliguala/niuwa/common/widget/spinner/c<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/spinner/c;, "Lcom/jiliguala/niuwa/common/widget/spinner/c<TT;>;"
    if-nez p2, :cond_1

    .line 33
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/c;->a:Landroid/content/Context;

    const v2, 0x7f0b0189

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 34
    const v1, 0x7f0905bb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    .local v0, "textView":Landroid/widget/TextView;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 37
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/c;->a:Landroid/content/Context;

    const v2, 0x7f080398

    invoke-static {v1, v2}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    :cond_0
    new-instance v1, Lcom/jiliguala/niuwa/common/widget/spinner/c$a;

    invoke-direct {v1, v0}, Lcom/jiliguala/niuwa/common/widget/spinner/c$a;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    :goto_0
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/spinner/c;->b:I

    if-ne p1, v1, :cond_2

    .line 46
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    :goto_1
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/spinner/c;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-object p2

    .line 42
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/spinner/c$a;

    iget-object v0, v1, Lcom/jiliguala/niuwa/common/widget/spinner/c$a;->a:Landroid/widget/TextView;

    .restart local v0    # "textView":Landroid/widget/TextView;
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
