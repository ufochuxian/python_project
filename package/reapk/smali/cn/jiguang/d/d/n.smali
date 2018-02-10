.class final Lcn/jiguang/d/d/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/jiguang/d/d/m;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;

.field private d:I

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcn/jiguang/d/d/m;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/d/d/n;->a:Lcn/jiguang/d/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcn/jiguang/d/d/n;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/jiguang/d/d/n;->c:Landroid/os/Bundle;

    iput-object p2, p0, Lcn/jiguang/d/d/n;->e:Landroid/content/Context;

    iput p5, p0, Lcn/jiguang/d/d/n;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcn/jiguang/d/d/n;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/jiguang/d/d/n;->a:Lcn/jiguang/d/d/m;

    iget-object v1, p0, Lcn/jiguang/d/d/n;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/jiguang/d/d/n;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcn/jiguang/d/d/m;->a(Lcn/jiguang/d/d/m;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/d/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/d/d/n;->a:Lcn/jiguang/d/d/m;

    iget-object v1, p0, Lcn/jiguang/d/d/n;->e:Landroid/content/Context;

    iget-object v2, p0, Lcn/jiguang/d/d/n;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/jiguang/d/d/n;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcn/jiguang/d/d/m;->a(Lcn/jiguang/d/d/m;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/jiguang/d/d/n;->a:Lcn/jiguang/d/d/m;

    invoke-static {v0}, Lcn/jiguang/d/d/m;->a(Lcn/jiguang/d/d/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/d/d/n;->a:Lcn/jiguang/d/d/m;

    iget-object v1, p0, Lcn/jiguang/d/d/n;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/jiguang/d/d/n;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcn/jiguang/d/d/m;->a(Lcn/jiguang/d/d/m;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v0, "JServiceCommandHelper"

    const-string v1, "is not main process - "

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
