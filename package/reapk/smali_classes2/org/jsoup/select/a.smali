.class public Lorg/jsoup/select/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/f;)Lorg/jsoup/select/c;
    .locals 3
    .param p0, "eval"    # Lorg/jsoup/select/d;
    .param p1, "root"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 23
    new-instance v0, Lorg/jsoup/select/c;

    invoke-direct {v0}, Lorg/jsoup/select/c;-><init>()V

    .line 24
    .local v0, "elements":Lorg/jsoup/select/c;
    new-instance v1, Lorg/jsoup/select/e;

    new-instance v2, Lorg/jsoup/select/a$a;

    invoke-direct {v2, p1, v0, p0}, Lorg/jsoup/select/a$a;-><init>(Lorg/jsoup/nodes/f;Lorg/jsoup/select/c;Lorg/jsoup/select/d;)V

    invoke-direct {v1, v2}, Lorg/jsoup/select/e;-><init>(Lorg/jsoup/select/f;)V

    invoke-virtual {v1, p1}, Lorg/jsoup/select/e;->a(Lorg/jsoup/nodes/h;)V

    .line 25
    return-object v0
.end method
