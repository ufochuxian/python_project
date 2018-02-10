.class public abstract Landroid/support/v7/view/menu/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/o;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    a = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/content/Context;

.field protected c:Landroid/support/v7/view/menu/h;

.field protected d:Landroid/view/LayoutInflater;

.field protected e:Landroid/view/LayoutInflater;

.field protected f:Landroid/support/v7/view/menu/p;

.field private g:Landroid/support/v7/view/menu/o$a;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayoutRes"    # I
    .param p3, "itemLayoutRes"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/support/v7/view/menu/b;->a:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/b;->d:Landroid/view/LayoutInflater;

    .line 64
    iput p2, p0, Landroid/support/v7/view/menu/b;->h:I

    .line 65
    iput p3, p0, Landroid/support/v7/view/menu/b;->i:I

    .line 66
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/o$a;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/o$a;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/p;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->f:Landroid/support/v7/view/menu/p;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/view/menu/b;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/p;

    iput-object v0, p0, Landroid/support/v7/view/menu/b;->f:Landroid/support/v7/view/menu/p;

    .line 79
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->f:Landroid/support/v7/view/menu/p;

    iget-object v1, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v1}, Landroid/support/v7/view/menu/p;->a(Landroid/support/v7/view/menu/h;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/b;->b(Z)V

    .line 83
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->f:Landroid/support/v7/view/menu/p;

    return-object v0
.end method

.method public a(Landroid/support/v7/view/menu/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Landroid/support/v7/view/menu/k;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 181
    instance-of v1, p2, Landroid/support/v7/view/menu/p$a;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 182
    check-cast v0, Landroid/support/v7/view/menu/p$a;

    .line 186
    .local v0, "itemView":Landroid/support/v7/view/menu/p$a;
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/k;Landroid/support/v7/view/menu/p$a;)V

    .line 187
    check-cast v0, Landroid/view/View;

    .end local v0    # "itemView":Landroid/support/v7/view/menu/p$a;
    return-object v0

    .line 184
    :cond_0
    invoke-virtual {p0, p3}, Landroid/support/v7/view/menu/b;->b(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/p$a;

    move-result-object v0

    .restart local v0    # "itemView":Landroid/support/v7/view/menu/p$a;
    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 239
    iput p1, p0, Landroid/support/v7/view/menu/b;->j:I

    .line 240
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/view/menu/h;

    .prologue
    .line 70
    iput-object p1, p0, Landroid/support/v7/view/menu/b;->b:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/b;->e:Landroid/view/LayoutInflater;

    .line 72
    iput-object p2, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/h;

    .line 73
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;Z)V

    .line 213
    :cond_0
    return-void
.end method

.method public abstract a(Landroid/support/v7/view/menu/k;Landroid/support/v7/view/menu/p$a;)V
.end method

.method public a(Landroid/support/v7/view/menu/o$a;)V
    .locals 0
    .param p1, "cb"    # Landroid/support/v7/view/menu/o$a;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/o$a;

    .line 153
    return-void
.end method

.method protected a(Landroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 134
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/b;->f:Landroid/support/v7/view/menu/p;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 138
    return-void
.end method

.method public a(ILandroid/support/v7/view/menu/k;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Landroid/support/v7/view/menu/k;

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;
    .param p2, "item"    # Landroid/support/v7/view/menu/k;

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/u;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/u;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;)Z

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/view/ViewGroup;I)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 147
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/p$a;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/view/menu/b;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/p$a;

    return-object v0
.end method

.method public b(Z)V
    .locals 10
    .param p1, "cleared"    # Z

    .prologue
    .line 90
    iget-object v7, p0, Landroid/support/v7/view/menu/b;->f:Landroid/support/v7/view/menu/p;

    check-cast v7, Landroid/view/ViewGroup;

    .line 91
    .local v7, "parent":Landroid/view/ViewGroup;
    if-nez v7, :cond_1

    .line 124
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 94
    .local v0, "childIndex":I
    iget-object v9, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/h;

    if-eqz v9, :cond_6

    .line 95
    iget-object v9, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {v9}, Landroid/support/v7/view/menu/h;->k()V

    .line 96
    iget-object v9, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {v9}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v8

    .line 97
    .local v8, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 98
    .local v4, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 99
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/k;

    .line 100
    .local v3, "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {p0, v0, v3}, Landroid/support/v7/view/menu/b;->a(ILandroid/support/v7/view/menu/k;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 101
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, "convertView":Landroid/view/View;
    instance-of v9, v1, Landroid/support/v7/view/menu/p$a;

    if-eqz v9, :cond_5

    move-object v9, v1

    check-cast v9, Landroid/support/v7/view/menu/p$a;

    .line 103
    invoke-interface {v9}, Landroid/support/v7/view/menu/p$a;->getItemData()Landroid/support/v7/view/menu/k;

    move-result-object v6

    .line 104
    .local v6, "oldItem":Landroid/support/v7/view/menu/k;
    :goto_1
    invoke-virtual {p0, v3, v1, v7}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 105
    .local v5, "itemView":Landroid/view/View;
    if-eq v3, v6, :cond_2

    .line 107
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    .line 108
    invoke-static {v5}, Landroid/support/v4/view/ap;->Q(Landroid/view/View;)V

    .line 110
    :cond_2
    if-eq v5, v1, :cond_3

    .line 111
    invoke-virtual {p0, v5, v0}, Landroid/support/v7/view/menu/b;->a(Landroid/view/View;I)V

    .line 113
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 98
    .end local v1    # "convertView":Landroid/view/View;
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "oldItem":Landroid/support/v7/view/menu/k;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .restart local v1    # "convertView":Landroid/view/View;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 119
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/support/v7/view/menu/k;
    .end local v4    # "itemCount":I
    .end local v8    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :cond_6
    :goto_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v0, v9, :cond_0

    .line 120
    invoke-virtual {p0, v7, v0}, Landroid/support/v7/view/menu/b;->a(Landroid/view/ViewGroup;I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;
    .param p2, "item"    # Landroid/support/v7/view/menu/k;

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Landroid/support/v7/view/menu/b;->j:I

    return v0
.end method
