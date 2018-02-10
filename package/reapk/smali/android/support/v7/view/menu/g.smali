.class public Landroid/support/v7/view/menu/g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    a = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field static final a:I


# instance fields
.field b:Landroid/support/v7/view/menu/h;

.field private c:I

.field private d:Z

.field private final e:Z

.field private final f:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget v0, Landroid/support/v7/a/b$i;->abc_popup_menu_item_layout:I

    sput v0, Landroid/support/v7/view/menu/g;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/view/menu/h;Landroid/view/LayoutInflater;Z)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "overflowOnly"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/g;->c:I

    .line 45
    iput-boolean p3, p0, Landroid/support/v7/view/menu/g;->e:Z

    .line 46
    iput-object p2, p0, Landroid/support/v7/view/menu/g;->f:Landroid/view/LayoutInflater;

    .line 47
    iput-object p1, p0, Landroid/support/v7/view/menu/g;->b:Landroid/support/v7/view/menu/h;

    .line 48
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->c()V

    .line 49
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v7/view/menu/k;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-boolean v1, p0, Landroid/support/v7/view/menu/g;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/view/menu/g;->b:Landroid/support/v7/view/menu/h;

    .line 76
    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 77
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :goto_0
    iget v1, p0, Landroid/support/v7/view/menu/g;->c:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v7/view/menu/g;->c:I

    if-lt p1, v1, :cond_0

    .line 78
    add-int/lit8 p1, p1, 0x1

    .line 80
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/k;

    return-object v1

    .line 76
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Landroid/support/v7/view/menu/g;->d:Z

    .line 57
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->d:Z

    return v0
.end method

.method public b()Landroid/support/v7/view/menu/h;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->b:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method c()V
    .locals 6

    .prologue
    .line 105
    iget-object v5, p0, Landroid/support/v7/view/menu/g;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/h;->s()Landroid/support/v7/view/menu/k;

    move-result-object v1

    .line 106
    .local v1, "expandedItem":Landroid/support/v7/view/menu/k;
    if-eqz v1, :cond_1

    .line 107
    iget-object v5, p0, Landroid/support/v7/view/menu/g;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/h;->m()Ljava/util/ArrayList;

    move-result-object v4

    .line 108
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 109
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 110
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/k;

    .line 111
    .local v3, "item":Landroid/support/v7/view/menu/k;
    if-ne v3, v1, :cond_0

    .line 112
    iput v2, p0, Landroid/support/v7/view/menu/g;->c:I

    .line 118
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/support/v7/view/menu/k;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :goto_1
    return-void

    .line 109
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/support/v7/view/menu/k;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/support/v7/view/menu/k;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Landroid/support/v7/view/menu/g;->c:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 61
    iget-boolean v1, p0, Landroid/support/v7/view/menu/g;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/g;->b:Landroid/support/v7/view/menu/h;

    .line 62
    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 63
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :goto_0
    iget v1, p0, Landroid/support/v7/view/menu/g;->c:I

    if-gez v1, :cond_1

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 66
    :goto_1
    return v1

    .line 62
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 66
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->a(I)Landroid/support/v7/view/menu/k;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
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

    .line 92
    if-nez p2, :cond_0

    .line 93
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->f:Landroid/view/LayoutInflater;

    sget v2, Landroid/support/v7/view/menu/g;->a:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 96
    check-cast v0, Landroid/support/v7/view/menu/p$a;

    .line 97
    .local v0, "itemView":Landroid/support/v7/view/menu/p$a;
    iget-boolean v1, p0, Landroid/support/v7/view/menu/g;->d:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 98
    check-cast v1, Landroid/support/v7/view/menu/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 100
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->a(I)Landroid/support/v7/view/menu/k;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/support/v7/view/menu/p$a;->a(Landroid/support/v7/view/menu/k;I)V

    .line 101
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->c()V

    .line 123
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 124
    return-void
.end method
