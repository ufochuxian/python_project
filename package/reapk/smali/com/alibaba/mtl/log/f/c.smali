.class public Lcom/alibaba/mtl/log/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/mtl/log/f/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Class;

.field private f:Ljava/lang/reflect/Field;

.field private g:Ljava/lang/reflect/Field;

.field private h:Ljava/lang/reflect/Field;

.field private i:Ljava/lang/reflect/Method;

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aAppkey"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->a:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->c:Ljava/lang/Object;

    .line 40
    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->d:Ljava/lang/Object;

    .line 41
    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->e:Ljava/lang/Class;

    .line 42
    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->f:Ljava/lang/reflect/Field;

    .line 43
    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->g:Ljava/lang/reflect/Field;

    .line 44
    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->h:Ljava/lang/reflect/Field;

    .line 45
    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->i:Ljava/lang/reflect/Method;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/mtl/log/f/c;->j:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/log/f/c;->k:Z

    .line 35
    iput-object p1, p0, Lcom/alibaba/mtl/log/f/c;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/alibaba/mtl/log/f/c;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private declared-synchronized b()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 51
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/f/c;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :cond_0
    :try_start_1
    const-string v0, "com.alibaba.wireless.security.open.SecurityGuardManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 57
    :try_start_2
    const-string v0, "getInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 58
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/alibaba/mtl/log/a;->c()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->c:Ljava/lang/Object;

    .line 60
    const-string v0, "getSecureSignatureComp"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    iget-object v5, p0, Lcom/alibaba/mtl/log/f/c;->c:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->d:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :goto_1
    if-eqz v1, :cond_1

    .line 67
    :try_start_3
    const-string v0, "com.alibaba.wireless.security.open.SecurityGuardParamContext"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->e:Ljava/lang/Class;

    .line 68
    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->e:Ljava/lang/Class;

    const-string v5, "appKey"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->f:Ljava/lang/reflect/Field;

    .line 69
    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->e:Ljava/lang/Class;

    const-string v5, "paramMap"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->g:Ljava/lang/reflect/Field;

    .line 70
    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->e:Ljava/lang/Class;

    const-string v5, "requestType"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->h:Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    const-string v0, "isOpen"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 80
    :goto_2
    if-eqz v0, :cond_2

    .line 81
    :try_start_5
    iget-object v1, p0, Lcom/alibaba/mtl/log/f/c;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 95
    :goto_3
    if-eqz v0, :cond_3

    move v0, v3

    :goto_4
    iput v0, p0, Lcom/alibaba/mtl/log/f/c;->j:I

    .line 97
    const-string v0, "com.alibaba.wireless.security.open.securesignature.ISecureSignatureComponent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    const-string v1, "signRequest"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/mtl/log/f/c;->e:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/log/f/c;->i:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 103
    :cond_1
    :goto_5
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/f/c;->k:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 62
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 63
    :goto_6
    :try_start_7
    const-string v5, "SecurityRequestAuth"

    const-string v6, "initSecurityCheck"

    invoke-static {v5, v6, v0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 76
    :catch_1
    move-exception v0

    .line 77
    :try_start_8
    const-string v1, "SecurityRequestAuth"

    const-string v5, "initSecurityCheck"

    invoke-static {v1, v5, v0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v2

    goto :goto_2

    .line 86
    :cond_2
    :try_start_9
    const-string v0, "com.taobao.wireless.security.sdk.securitybody.ISecurityBodyComponent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v2

    .line 90
    :goto_7
    if-nez v2, :cond_4

    move v0, v3

    .line 91
    goto :goto_3

    .line 87
    :catch_2
    move-exception v0

    .line 88
    :try_start_a
    const-string v1, "SecurityRequestAuth"

    const-string v5, "initSecurityCheck"

    invoke-static {v1, v5, v0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .line 100
    :catch_3
    move-exception v0

    .line 101
    :try_start_b
    const-string v1, "SecurityRequestAuth"

    const-string v2, "initSecurityCheck"

    invoke-static {v1, v2, v0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .line 95
    :cond_3
    const/16 v0, 0xc

    goto :goto_4

    .line 62
    :catch_4
    move-exception v0

    goto :goto_6

    :cond_4
    move v0, v4

    goto :goto_3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "toBeSignedStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 110
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/f/c;->k:Z

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/alibaba/mtl/log/f/c;->b()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 115
    const-string v0, "SecurityRequestAuth"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "There is no appkey,please check it!"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_1
    :goto_0
    return-object v1

    .line 119
    :cond_2
    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->c:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->e:Ljava/lang/Class;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->f:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->g:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->h:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->d:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 129
    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->f:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/alibaba/mtl/log/f/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 131
    const-string v3, "INPUT"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->h:Ljava/lang/reflect/Field;

    iget v3, p0, Lcom/alibaba/mtl/log/f/c;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/mtl/log/f/c;->i:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/alibaba/mtl/log/f/c;->d:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/alibaba/mtl/log/f/c;->b:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 144
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
