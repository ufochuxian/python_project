.class Lorg/xbill/DNS/ac;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Lorg/xbill/DNS/v;

.field private b:Ljava/lang/Object;

.field private c:Lorg/xbill/DNS/af;

.field private d:Lorg/xbill/DNS/ad;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/ad;Lorg/xbill/DNS/v;Ljava/lang/Object;Lorg/xbill/DNS/af;)V
    .locals 0
    .param p1, "res"    # Lorg/xbill/DNS/ad;
    .param p2, "query"    # Lorg/xbill/DNS/v;
    .param p3, "id"    # Ljava/lang/Object;
    .param p4, "listener"    # Lorg/xbill/DNS/af;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/xbill/DNS/ac;->d:Lorg/xbill/DNS/ad;

    .line 25
    iput-object p2, p0, Lorg/xbill/DNS/ac;->a:Lorg/xbill/DNS/v;

    .line 26
    iput-object p3, p0, Lorg/xbill/DNS/ac;->b:Ljava/lang/Object;

    .line 27
    iput-object p4, p0, Lorg/xbill/DNS/ac;->c:Lorg/xbill/DNS/af;

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 37
    :try_start_0
    iget-object v2, p0, Lorg/xbill/DNS/ac;->d:Lorg/xbill/DNS/ad;

    iget-object v3, p0, Lorg/xbill/DNS/ac;->a:Lorg/xbill/DNS/v;

    invoke-interface {v2, v3}, Lorg/xbill/DNS/ad;->a(Lorg/xbill/DNS/v;)Lorg/xbill/DNS/v;

    move-result-object v1

    .line 38
    .local v1, "response":Lorg/xbill/DNS/v;
    iget-object v2, p0, Lorg/xbill/DNS/ac;->c:Lorg/xbill/DNS/af;

    iget-object v3, p0, Lorg/xbill/DNS/ac;->b:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lorg/xbill/DNS/af;->a(Ljava/lang/Object;Lorg/xbill/DNS/v;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "response":Lorg/xbill/DNS/v;
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/xbill/DNS/ac;->c:Lorg/xbill/DNS/af;

    iget-object v3, p0, Lorg/xbill/DNS/ac;->b:Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lorg/xbill/DNS/af;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
