.class public Lcom/jiliguala/niuwa/common/widget/spinner/b;
.super Lcom/jiliguala/niuwa/common/widget/spinner/c;
.source "SourceFile"


# instance fields
.field private final c:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toWrap"    # Landroid/widget/ListAdapter;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/spinner/c;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/spinner/b;->c:Landroid/widget/ListAdapter;

    .line 17
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/b;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/b;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/spinner/b;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
