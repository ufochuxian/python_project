.class public Lcom/nineoldandroids/a/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nineoldandroids/a/d;

.field private b:Lcom/nineoldandroids/a/d$e;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/a/d;Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "this$0"    # Lcom/nineoldandroids/a/d;
    .param p2, "anim"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 987
    iput-object p1, p0, Lcom/nineoldandroids/a/d$b;->a:Lcom/nineoldandroids/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    invoke-static {p1}, Lcom/nineoldandroids/a/d;->b(Lcom/nineoldandroids/a/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/d$e;

    iput-object v0, p0, Lcom/nineoldandroids/a/d$b;->b:Lcom/nineoldandroids/a/d$e;

    .line 989
    iget-object v0, p0, Lcom/nineoldandroids/a/d$b;->b:Lcom/nineoldandroids/a/d$e;

    if-nez v0, :cond_0

    .line 990
    new-instance v0, Lcom/nineoldandroids/a/d$e;

    invoke-direct {v0, p2}, Lcom/nineoldandroids/a/d$e;-><init>(Lcom/nineoldandroids/a/a;)V

    iput-object v0, p0, Lcom/nineoldandroids/a/d$b;->b:Lcom/nineoldandroids/a/d$e;

    .line 991
    invoke-static {p1}, Lcom/nineoldandroids/a/d;->b(Lcom/nineoldandroids/a/d;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nineoldandroids/a/d$b;->b:Lcom/nineoldandroids/a/d$e;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    invoke-static {p1}, Lcom/nineoldandroids/a/d;->d(Lcom/nineoldandroids/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/nineoldandroids/a/d$b;->b:Lcom/nineoldandroids/a/d$e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)Lcom/nineoldandroids/a/d$b;
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 1058
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/nineoldandroids/a/q;->b([F)Lcom/nineoldandroids/a/q;

    move-result-object v0

    .line 1059
    .local v0, "anim":Lcom/nineoldandroids/a/q;
    invoke-virtual {v0, p1, p2}, Lcom/nineoldandroids/a/q;->d(J)Lcom/nineoldandroids/a/q;

    .line 1060
    invoke-virtual {p0, v0}, Lcom/nineoldandroids/a/d$b;->c(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    .line 1061
    return-object p0

    .line 1058
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;
    .locals 4
    .param p1, "anim"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1002
    iget-object v2, p0, Lcom/nineoldandroids/a/d$b;->a:Lcom/nineoldandroids/a/d;

    invoke-static {v2}, Lcom/nineoldandroids/a/d;->b(Lcom/nineoldandroids/a/d;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/d$e;

    .line 1003
    .local v1, "node":Lcom/nineoldandroids/a/d$e;
    if-nez v1, :cond_0

    .line 1004
    new-instance v1, Lcom/nineoldandroids/a/d$e;

    .end local v1    # "node":Lcom/nineoldandroids/a/d$e;
    invoke-direct {v1, p1}, Lcom/nineoldandroids/a/d$e;-><init>(Lcom/nineoldandroids/a/a;)V

    .line 1005
    .restart local v1    # "node":Lcom/nineoldandroids/a/d$e;
    iget-object v2, p0, Lcom/nineoldandroids/a/d$b;->a:Lcom/nineoldandroids/a/d;

    invoke-static {v2}, Lcom/nineoldandroids/a/d;->b(Lcom/nineoldandroids/a/d;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget-object v2, p0, Lcom/nineoldandroids/a/d$b;->a:Lcom/nineoldandroids/a/d;

    invoke-static {v2}, Lcom/nineoldandroids/a/d;->d(Lcom/nineoldandroids/a/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    :cond_0
    new-instance v0, Lcom/nineoldandroids/a/d$c;

    iget-object v2, p0, Lcom/nineoldandroids/a/d$b;->b:Lcom/nineoldandroids/a/d$e;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/nineoldandroids/a/d$c;-><init>(Lcom/nineoldandroids/a/d$e;I)V

    .line 1009
    .local v0, "dependency":Lcom/nineoldandroids/a/d$c;
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/a/d$e;->a(Lcom/nineoldandroids/a/d$c;)V

    .line 1010
    return-object p0
.end method

.method public b(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;
    .locals 4
    .param p1, "anim"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1020
    iget-object v2, p0, Lcom/nineoldandroids/a/d$b;->a:Lcom/nineoldandroids/a/d;

    invoke-static {v2}, Lcom/nineoldandroids/a/d;->b(Lcom/nineoldandroids/a/d;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/d$e;

    .line 1021
    .local v1, "node":Lcom/nineoldandroids/a/d$e;
    if-nez v1, :cond_0

    .line 1022
    new-instance v1, Lcom/nineoldandroids/a/d$e;

    .end local v1    # "node":Lcom/nineoldandroids/a/d$e;
    invoke-direct {v1, p1}, Lcom/nineoldandroids/a/d$e;-><init>(Lcom/nineoldandroids/a/a;)V

    .line 1023
    .restart local v1    # "node":Lcom/nineoldandroids/a/d$e;
    iget-object v2, p0, Lcom/nineoldandroids/a/d$b;->a:Lcom/nineoldandroids/a/d;

    invoke-static {v2}, Lcom/nineoldandroids/a/d;->b(Lcom/nineoldandroids/a/d;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    iget-object v2, p0, Lcom/nineoldandroids/a/d$b;->a:Lcom/nineoldandroids/a/d;

    invoke-static {v2}, Lcom/nineoldandroids/a/d;->d(Lcom/nineoldandroids/a/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    :cond_0
    new-instance v0, Lcom/nineoldandroids/a/d$c;

    iget-object v2, p0, Lcom/nineoldandroids/a/d$b;->b:Lcom/nineoldandroids/a/d$e;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/nineoldandroids/a/d$c;-><init>(Lcom/nineoldandroids/a/d$e;I)V

    .line 1027
    .local v0, "dependency":Lcom/nineoldandroids/a/d$c;
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/a/d$e;->a(Lcom/nineoldandroids/a/d$c;)V

    .line 1028
    return-object p0
.end method

.method public c(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;
    .locals 3
    .param p1, "anim"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1038
    iget-object v2, p0, Lcom/nineoldandroids/a/d$b;->a:Lcom/nineoldandroids/a/d;

    invoke-static {v2}, Lcom/nineoldandroids/a/d;->b(Lcom/nineoldandroids/a/d;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/d$e;

    .line 1039
    .local v1, "node":Lcom/nineoldandroids/a/d$e;
    if-nez v1, :cond_0

    .line 1040
    new-instance v1, Lcom/nineoldandroids/a/d$e;

    .end local v1    # "node":Lcom/nineoldandroids/a/d$e;
    invoke-direct {v1, p1}, Lcom/nineoldandroids/a/d$e;-><init>(Lcom/nineoldandroids/a/a;)V

    .line 1041
    .restart local v1    # "node":Lcom/nineoldandroids/a/d$e;
    iget-object v2, p0, Lcom/nineoldandroids/a/d$b;->a:Lcom/nineoldandroids/a/d;

    invoke-static {v2}, Lcom/nineoldandroids/a/d;->b(Lcom/nineoldandroids/a/d;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iget-object v2, p0, Lcom/nineoldandroids/a/d$b;->a:Lcom/nineoldandroids/a/d;

    invoke-static {v2}, Lcom/nineoldandroids/a/d;->d(Lcom/nineoldandroids/a/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    :cond_0
    new-instance v0, Lcom/nineoldandroids/a/d$c;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/a/d$c;-><init>(Lcom/nineoldandroids/a/d$e;I)V

    .line 1045
    .local v0, "dependency":Lcom/nineoldandroids/a/d$c;
    iget-object v2, p0, Lcom/nineoldandroids/a/d$b;->b:Lcom/nineoldandroids/a/d$e;

    invoke-virtual {v2, v0}, Lcom/nineoldandroids/a/d$e;->a(Lcom/nineoldandroids/a/d$c;)V

    .line 1046
    return-object p0
.end method
