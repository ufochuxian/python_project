.class public final Lcn/jiguang/d/b/a/a/c;
.super Lcn/jiguang/d/b/a/a/i;


# direct methods
.method public constructor <init>(Lcn/jiguang/d/b/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jiguang/d/b/a/a/i;-><init>(Lcn/jiguang/d/b/a/d;)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/c;->a:Lcn/jiguang/d/b/a/d;

    invoke-virtual {v0}, Lcn/jiguang/d/b/a/d;->a()Lcn/jiguang/d/b/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jiguang/d/b/a/a/c;->a(Lcn/jiguang/d/b/a/a;)Lcn/jiguang/d/b/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jiguang/d/b/a/a/c;->b(Lcn/jiguang/d/b/a/a;)I

    move-result v0

    return v0
.end method
