.class public Lcom/bigkoo/pickerview/b;
.super Lcom/bigkoo/pickerview/e/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bigkoo/pickerview/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bigkoo/pickerview/e/a;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "submit"

.field private static final h:Ljava/lang/String; = "cancel"


# instance fields
.field a:Lcom/bigkoo/pickerview/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bigkoo/pickerview/e/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/bigkoo/pickerview/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/e/a;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/c$i;->pickerview_options:I

    iget-object v3, p0, Lcom/bigkoo/pickerview/b;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    sget v1, Lcom/bigkoo/pickerview/c$g;->btnSubmit:I

    invoke-virtual {p0, v1}, Lcom/bigkoo/pickerview/b;->b(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bigkoo/pickerview/b;->c:Landroid/view/View;

    .line 30
    iget-object v1, p0, Lcom/bigkoo/pickerview/b;->c:Landroid/view/View;

    const-string v2, "submit"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 31
    sget v1, Lcom/bigkoo/pickerview/c$g;->btnCancel:I

    invoke-virtual {p0, v1}, Lcom/bigkoo/pickerview/b;->b(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bigkoo/pickerview/b;->d:Landroid/view/View;

    .line 32
    iget-object v1, p0, Lcom/bigkoo/pickerview/b;->d:Landroid/view/View;

    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    iget-object v1, p0, Lcom/bigkoo/pickerview/b;->c:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v1, p0, Lcom/bigkoo/pickerview/b;->d:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    sget v1, Lcom/bigkoo/pickerview/c$g;->tvTitle:I

    invoke-virtual {p0, v1}, Lcom/bigkoo/pickerview/b;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bigkoo/pickerview/b;->e:Landroid/widget/TextView;

    .line 38
    sget v1, Lcom/bigkoo/pickerview/c$g;->optionspicker:I

    invoke-virtual {p0, v1}, Lcom/bigkoo/pickerview/b;->b(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "optionspicker":Landroid/view/View;
    new-instance v1, Lcom/bigkoo/pickerview/e/b;

    invoke-direct {v1, v0}, Lcom/bigkoo/pickerview/e/b;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/bigkoo/pickerview/b;->a:Lcom/bigkoo/pickerview/e/b;

    .line 40
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "option1"    # I

    .prologue
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/bigkoo/pickerview/b;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-virtual {v0, p1, v1, v1}, Lcom/bigkoo/pickerview/e/b;->a(III)V

    .line 63
    return-void
.end method

.method public a(II)V
    .locals 2
    .param p1, "option1"    # I
    .param p2, "option2"    # I

    .prologue
    .line 70
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/b;->a:Lcom/bigkoo/pickerview/e/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/bigkoo/pickerview/e/b;->a(III)V

    .line 71
    return-void
.end method

.method public a(III)V
    .locals 1
    .param p1, "option1"    # I
    .param p2, "option2"    # I
    .param p3, "option3"    # I

    .prologue
    .line 79
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/b;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bigkoo/pickerview/e/b;->a(III)V

    .line 80
    return-void
.end method

.method public a(Lcom/bigkoo/pickerview/b$a;)V
    .locals 0
    .param p1, "optionsSelectListener"    # Lcom/bigkoo/pickerview/b$a;

    .prologue
    .line 144
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    iput-object p1, p0, Lcom/bigkoo/pickerview/b;->f:Lcom/bigkoo/pickerview/b$a;

    .line 145
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "label1"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/bigkoo/pickerview/b;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-virtual {v0, p1, v1, v1}, Lcom/bigkoo/pickerview/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "label1"    # Ljava/lang/String;
    .param p2, "label2"    # Ljava/lang/String;

    .prologue
    .line 94
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/b;->a:Lcom/bigkoo/pickerview/e/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/bigkoo/pickerview/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label1"    # Ljava/lang/String;
    .param p2, "label2"    # Ljava/lang/String;
    .param p3, "label3"    # Ljava/lang/String;

    .prologue
    .line 103
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/b;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bigkoo/pickerview/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    .local p1, "optionsItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/bigkoo/pickerview/b;->a:Lcom/bigkoo/pickerview/e/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/bigkoo/pickerview/e/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 43
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p4, "linkage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    .local p1, "options1Items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p2, "options2Items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    .local p3, "options3Items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/b;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bigkoo/pickerview/e/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 56
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p3, "linkage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    .local p1, "options1Items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p2, "options2Items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/b;->a:Lcom/bigkoo/pickerview/e/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/bigkoo/pickerview/e/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 48
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "cyclic"    # Z

    .prologue
    .line 110
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/b;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/e/b;->a(Z)V

    .line 111
    return-void
.end method

.method public a(ZZZ)V
    .locals 1
    .param p1, "cyclic1"    # Z
    .param p2, "cyclic2"    # Z
    .param p3, "cyclic3"    # Z

    .prologue
    .line 113
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/b;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bigkoo/pickerview/e/b;->a(ZZZ)V

    .line 114
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 148
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    .local p0, "this":Lcom/bigkoo/pickerview/b;, "Lcom/bigkoo/pickerview/b<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    .local v1, "tag":Ljava/lang/String;
    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/b;->f()V

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/b;->f:Lcom/bigkoo/pickerview/b$a;

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/bigkoo/pickerview/b;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-virtual {v2}, Lcom/bigkoo/pickerview/e/b;->b()[I

    move-result-object v0

    .line 131
    .local v0, "optionsCurrentItems":[I
    iget-object v2, p0, Lcom/bigkoo/pickerview/b;->f:Lcom/bigkoo/pickerview/b$a;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-interface {v2, v3, v4, v5}, Lcom/bigkoo/pickerview/b$a;->a(III)V

    .line 133
    .end local v0    # "optionsCurrentItems":[I
    :cond_1
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/b;->f()V

    goto :goto_0
.end method
