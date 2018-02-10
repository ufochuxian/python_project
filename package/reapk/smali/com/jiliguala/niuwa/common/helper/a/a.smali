.class public Lcom/jiliguala/niuwa/common/helper/a/a;
.super Lcom/jiliguala/niuwa/common/helper/a/d;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/jiliguala/niuwa/common/helper/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/helper/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroid/view/View;[I)V
    .locals 0
    .param p1, "actionBtn"    # Landroid/view/View;
    .param p2, "fields"    # [I
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldId"    # I

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/helper/a/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(IZLjava/lang/Object;)V
    .locals 0
    .param p1, "fieldId"    # I
    .param p2, "isCorrect"    # Z
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 22
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/helper/a/d;->a()Z

    move-result v0

    return v0
.end method
