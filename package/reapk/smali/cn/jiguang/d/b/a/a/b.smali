.class public final Lcn/jiguang/d/b/a/a/b;
.super Lcn/jiguang/d/b/a/a/i;


# direct methods
.method public constructor <init>(Lcn/jiguang/d/b/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jiguang/d/b/a/a/i;-><init>(Lcn/jiguang/d/b/a/d;)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 4

    const/4 v0, -0x1

    const-string v1, "DefaultConnPolicy"

    sget-object v2, Lcn/jiguang/d/a;->f:Lcn/jiguang/c/b;

    invoke-interface {v2}, Lcn/jiguang/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/d/d/c;->b(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lcn/jiguang/d/b/a/a;

    invoke-direct {v0}, Lcn/jiguang/d/b/a/a;-><init>()V

    const/16 v3, 0x1b58

    invoke-virtual {v0, v2, v3, v1}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x1b5a

    invoke-virtual {v0, v2, v3, v1}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x1b5b

    invoke-virtual {v0, v2, v3, v1}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x1b5c

    invoke-virtual {v0, v2, v3, v1}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x1b5d

    invoke-virtual {v0, v2, v3, v1}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x1b5e

    invoke-virtual {v0, v2, v3, v1}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x1b5f

    invoke-virtual {v0, v2, v3, v1}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x1b60

    invoke-virtual {v0, v2, v3, v1}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x1b61

    invoke-virtual {v0, v2, v3, v1}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/jiguang/d/b/a/a/b;->b(Lcn/jiguang/d/b/a/a;)I

    move-result v0

    goto :goto_0
.end method
