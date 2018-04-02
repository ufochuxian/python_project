.class Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

.field private b:Landroid/content/Context;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "data"    # [Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;->b:Landroid/content/Context;

    .line 147
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;->c:[Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 162
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00e4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 168
    const v1, 0x7f09056b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;->c:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->access$100(Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->access$100(Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;)I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 176
    return-object p2

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 175
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
