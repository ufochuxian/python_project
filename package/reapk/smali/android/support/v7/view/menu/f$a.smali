.class Landroid/support/v7/view/menu/f$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/f;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/f;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Landroid/support/v7/view/menu/f$a;->a:Landroid/support/v7/view/menu/f;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/f$a;->b:I

    .line 232
    invoke-virtual {p0}, Landroid/support/v7/view/menu/f$a;->a()V

    .line 233
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v7/view/menu/k;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 245
    iget-object v1, p0, Landroid/support/v7/view/menu/f$a;->a:Landroid/support/v7/view/menu/f;

    iget-object v1, v1, Landroid/support/v7/view/menu/f;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    iget-object v1, p0, Landroid/support/v7/view/menu/f$a;->a:Landroid/support/v7/view/menu/f;

    iget v1, v1, Landroid/support/v7/view/menu/f;->e:I

    add-int/2addr p1, v1

    .line 247
    iget v1, p0, Landroid/support/v7/view/menu/f$a;->b:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v7/view/menu/f$a;->b:I

    if-lt p1, v1, :cond_0

    .line 248
    add-int/lit8 p1, p1, 0x1

    .line 250
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/k;

    return-object v1
.end method

.method a()V
    .locals 6

    .prologue
    .line 270
    iget-object v5, p0, Landroid/support/v7/view/menu/f$a;->a:Landroid/support/v7/view/menu/f;

    iget-object v5, v5, Landroid/support/v7/view/menu/f;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/h;->s()Landroid/support/v7/view/menu/k;

    move-result-object v1

    .line 271
    .local v1, "expandedItem":Landroid/support/v7/view/menu/k;
    if-eqz v1, :cond_1

    .line 272
    iget-object v5, p0, Landroid/support/v7/view/menu/f$a;->a:Landroid/support/v7/view/menu/f;

    iget-object v5, v5, Landroid/support/v7/view/menu/f;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/h;->m()Ljava/util/ArrayList;

    move-result-object v4

    .line 273
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 274
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 275
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/k;

    .line 276
    .local v3, "item":Landroid/support/v7/view/menu/k;
    if-ne v3, v1, :cond_0

    .line 277
    iput v2, p0, Landroid/support/v7/view/menu/f$a;->b:I

    .line 283
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/support/v7/view/menu/k;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :goto_1
    return-void

    .line 274
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/support/v7/view/menu/k;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/support/v7/view/menu/k;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Landroid/support/v7/view/menu/f$a;->b:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 236
    iget-object v2, p0, Landroid/support/v7/view/menu/f$a;->a:Landroid/support/v7/view/menu/f;

    iget-object v2, v2, Landroid/support/v7/view/menu/f;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->m()Ljava/util/ArrayList;

    move-result-object v1

    .line 237
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/view/menu/f$a;->a:Landroid/support/v7/view/menu/f;

    iget v3, v3, Landroid/support/v7/view/menu/f;->e:I

    sub-int v0, v2, v3

    .line 238
    .local v0, "count":I
    iget v2, p0, Landroid/support/v7/view/menu/f$a;->b:I

    if-gez v2, :cond_0

    .line 241
    .end local v0    # "count":I
    :goto_0
    return v0

    .restart local v0    # "count":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/f$a;->a(I)Landroid/support/v7/view/menu/k;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 256
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 260
    if-nez p2, :cond_0

    .line 261
    iget-object v1, p0, Landroid/support/v7/view/menu/f$a;->a:Landroid/support/v7/view/menu/f;

    iget-object v1, v1, Landroid/support/v7/view/menu/f;->b:Landroid/view/LayoutInflater;

    iget-object v2, p0, Landroid/support/v7/view/menu/f$a;->a:Landroid/support/v7/view/menu/f;

    iget v2, v2, Landroid/support/v7/view/menu/f;->g:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 264
    check-cast v0, Landroid/support/v7/view/menu/p$a;

    .line 265
    .local v0, "itemView":Landroid/support/v7/view/menu/p$a;
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/f$a;->a(I)Landroid/support/v7/view/menu/k;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/support/v7/view/menu/p$a;->a(Landroid/support/v7/view/menu/k;I)V

    .line 266
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/support/v7/view/menu/f$a;->a()V

    .line 288
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 289
    return-void
.end method
