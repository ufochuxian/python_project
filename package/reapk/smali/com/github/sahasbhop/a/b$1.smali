.class Lcom/github/sahasbhop/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/sahasbhop/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/sahasbhop/a/b;->a(Lcom/github/sahasbhop/a/b$a;Lcom/github/sahasbhop/a/a/e;)Lcom/github/sahasbhop/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/sahasbhop/a/a/e;

.field final synthetic b:Lcom/github/sahasbhop/a/b$a;

.field final synthetic c:Lcom/github/sahasbhop/a/b;


# direct methods
.method constructor <init>(Lcom/github/sahasbhop/a/b;Lcom/github/sahasbhop/a/a/e;Lcom/github/sahasbhop/a/b$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/sahasbhop/a/b;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/github/sahasbhop/a/b$1;->c:Lcom/github/sahasbhop/a/b;

    iput-object p2, p0, Lcom/github/sahasbhop/a/b$1;->a:Lcom/github/sahasbhop/a/a/e;

    iput-object p3, p0, Lcom/github/sahasbhop/a/b$1;->b:Lcom/github/sahasbhop/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "imageUri"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 179
    if-nez p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-static {p3}, Lcom/github/sahasbhop/a/a;->a(Landroid/view/View;)Lcom/github/sahasbhop/a/a;

    move-result-object v0

    .line 181
    .local v0, "apngDrawable":Lcom/github/sahasbhop/a/a;
    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/github/sahasbhop/a/b$1;->a:Lcom/github/sahasbhop/a/a/e;

    invoke-virtual {v0, v1}, Lcom/github/sahasbhop/a/a;->a(Lcom/github/sahasbhop/a/a/e;)V

    .line 183
    iget-object v1, p0, Lcom/github/sahasbhop/a/b$1;->b:Lcom/github/sahasbhop/a/b$a;

    iget v1, v1, Lcom/github/sahasbhop/a/b$a;->a:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/github/sahasbhop/a/b$1;->b:Lcom/github/sahasbhop/a/b$a;

    iget v1, v1, Lcom/github/sahasbhop/a/b$a;->a:I

    invoke-virtual {v0, v1}, Lcom/github/sahasbhop/a/a;->a(I)V

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/github/sahasbhop/a/b$1;->b:Lcom/github/sahasbhop/a/b$a;

    iget-boolean v1, v1, Lcom/github/sahasbhop/a/b$a;->c:Z

    invoke-virtual {v0, v1}, Lcom/github/sahasbhop/a/a;->a(Z)V

    .line 185
    invoke-virtual {v0}, Lcom/github/sahasbhop/a/a;->start()V

    goto :goto_0
.end method
