.class Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:[I

.field final b:[I

.field final c:[Ljava/lang/String;

.field d:Landroid/view/View$OnClickListener;

.field final synthetic e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)V
    .locals 3
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .prologue
    const/4 v1, 0x6

    .line 312
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 247
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->a:[I

    .line 248
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->b:[I

    .line 249
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u670b\u53cb\u5708"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5fae\u4fe1\u597d\u53cb"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "QQ"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "QQ\u7a7a\u95f4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u6d4f\u89c8\u5668\u6253\u5f00"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u65b0\u6d6a\u5fae\u535a"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->c:[Ljava/lang/String;

    .line 251
    new-instance v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;-><init>(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->d:Landroid/view/View$OnClickListener;

    .line 314
    return-void

    .line 247
    :array_0
    .array-data 4
        0x7f0904dd
        0x7f0904e2
        0x7f0904de
        0x7f0904df
        0x7f0903b1
        0x7f0904e3
    .end array-data

    .line 248
    :array_1
    .array-data 4
        0x7f08023a
        0x7f080239
        0x7f080237
        0x7f080238
        0x7f080235
        0x7f08023b
    .end array-data
.end method


# virtual methods
.method public a(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    const-wide/32 v6, 0xffff

    const/16 v4, 0x31

    .line 360
    if-nez p1, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$1000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)J

    move-result-wide v2

    and-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 363
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$1000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)J

    move-result-wide v2

    and-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$1000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)J

    move-result-wide v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/x;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->a:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 328
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 334
    if-nez p2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b017e

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 336
    new-instance v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$b;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$b;-><init>()V

    .local v0, "holder":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$b;
    move-object v2, p2

    .line 337
    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$b;->b:Landroid/widget/TextView;

    .line 338
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 340
    .end local v0    # "holder":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$b;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$b;

    .line 341
    .restart local v0    # "holder":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$b;
    iput p1, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$b;->a:I

    .line 342
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$1000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x31

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    .line 343
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->a(I)I

    move-result v1

    .line 344
    .local v1, "offset":I
    iget-object v2, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$b;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v2, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$b;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->a:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 346
    iget-object v2, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$b;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->b:[I

    aget v3, v3, v1

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 347
    iget-object v2, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$b;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    return-object p2
.end method
