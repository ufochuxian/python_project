.class Lcom/nineoldandroids/util/d;
.super Lcom/nineoldandroids/util/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nineoldandroids/util/c",
        "<TT;TV;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "get"

.field private static final b:Ljava/lang/String; = "is"

.field private static final c:Ljava/lang/String; = "set"


# instance fields
.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 18
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/nineoldandroids/util/d;, "Lcom/nineoldandroids/util/d<TT;TV;>;"
    .local p1, "propertyHolder":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/util/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 49
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    .line 50
    .local v10, "firstLetter":C
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 51
    .local v14, "theRest":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "capitalizedName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 54
    .local v11, "getterName":Ljava/lang/String;
    const/4 v15, 0x0

    :try_start_0
    check-cast v15, [Ljava/lang/Class;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nineoldandroids/util/d;->e:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nineoldandroids/util/d;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    .line 96
    .local v12, "getterType":Ljava/lang/Class;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/nineoldandroids/util/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 97
    new-instance v15, Lcom/nineoldandroids/util/NoSuchPropertyException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Underlying type ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") does not match Property type ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/nineoldandroids/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 55
    .end local v12    # "getterType":Ljava/lang/Class;
    :catch_0
    move-exception v4

    .line 61
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const/4 v15, 0x0

    :try_start_1
    check-cast v15, [Ljava/lang/Class;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nineoldandroids/util/d;->e:Ljava/lang/reflect/Method;

    .line 62
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nineoldandroids/util/d;->e:Ljava/lang/reflect/Method;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 63
    :catch_1
    move-exception v5

    .line 65
    .local v5, "e2":Ljava/lang/NoSuchMethodException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 67
    const/4 v15, 0x0

    :try_start_2
    check-cast v15, [Ljava/lang/Class;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nineoldandroids/util/d;->e:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 68
    :catch_2
    move-exception v6

    .line 74
    .local v6, "e3":Ljava/lang/NoSuchMethodException;
    const/4 v15, 0x0

    :try_start_3
    check-cast v15, [Ljava/lang/Class;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nineoldandroids/util/d;->e:Ljava/lang/reflect/Method;

    .line 75
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nineoldandroids/util/d;->e:Ljava/lang/reflect/Method;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 76
    :catch_3
    move-exception v7

    .line 79
    .local v7, "e4":Ljava/lang/NoSuchMethodException;
    :try_start_4
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nineoldandroids/util/d;->f:Ljava/lang/reflect/Field;

    .line 80
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nineoldandroids/util/d;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 81
    .local v9, "fieldType":Ljava/lang/Class;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lcom/nineoldandroids/util/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 82
    new-instance v15, Lcom/nineoldandroids/util/NoSuchPropertyException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Underlying type ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") does not match Property type ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/nineoldandroids/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4

    .line 86
    .end local v9    # "fieldType":Ljava/lang/Class;
    :catch_4
    move-exception v8

    .line 88
    .local v8, "e5":Ljava/lang/NoSuchFieldException;
    new-instance v15, Lcom/nineoldandroids/util/NoSuchPropertyException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No accessor method or field found for property with name "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/nineoldandroids/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 99
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "e2":Ljava/lang/NoSuchMethodException;
    .end local v6    # "e3":Ljava/lang/NoSuchMethodException;
    .end local v7    # "e4":Ljava/lang/NoSuchMethodException;
    .end local v8    # "e5":Ljava/lang/NoSuchFieldException;
    .restart local v12    # "getterType":Ljava/lang/Class;
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "set"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 103
    .local v13, "setterName":Ljava/lang/String;
    const/4 v15, 0x1

    :try_start_5
    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nineoldandroids/util/d;->d:Ljava/lang/reflect/Method;

    .line 104
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nineoldandroids/util/d;->d:Ljava/lang/reflect/Method;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5

    .line 108
    .end local v12    # "getterType":Ljava/lang/Class;
    .end local v13    # "setterName":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 105
    .restart local v12    # "getterType":Ljava/lang/Class;
    .restart local v13    # "setterName":Ljava/lang/String;
    :catch_5
    move-exception v15

    goto :goto_1
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .param p2, "getterType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/Class;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nineoldandroids/util/d;, "Lcom/nineoldandroids/util/d<TT;TV;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    if-eq p2, p1, :cond_9

    .line 119
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 120
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_0

    const-class v2, Ljava/lang/Float;

    if-eq p1, v2, :cond_7

    :cond_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_1

    const-class v2, Ljava/lang/Integer;

    if-eq p1, v2, :cond_7

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_2

    const-class v2, Ljava/lang/Boolean;

    if-eq p1, v2, :cond_7

    :cond_2
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_3

    const-class v2, Ljava/lang/Long;

    if-eq p1, v2, :cond_7

    :cond_3
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_4

    const-class v2, Ljava/lang/Double;

    if-eq p1, v2, :cond_7

    :cond_4
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_5

    const-class v2, Ljava/lang/Short;

    if-eq p1, v2, :cond_7

    :cond_5
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_6

    const-class v2, Ljava/lang/Byte;

    if-eq p1, v2, :cond_7

    :cond_6
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_8

    const-class v2, Ljava/lang/Character;

    if-ne p1, v2, :cond_8

    :cond_7
    move v0, v1

    .line 127
    :cond_8
    :goto_0
    return v0

    :cond_9
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/nineoldandroids/util/d;, "Lcom/nineoldandroids/util/d<TT;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/nineoldandroids/util/d;->e:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/nineoldandroids/util/d;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 158
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 161
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    iget-object v1, p0, Lcom/nineoldandroids/util/d;->f:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 163
    :try_start_1
    iget-object v1, p0, Lcom/nineoldandroids/util/d;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    goto :goto_0

    .line 164
    :catch_2
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 169
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/nineoldandroids/util/d;, "Lcom/nineoldandroids/util/d<TT;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/nineoldandroids/util/d;->d:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/nineoldandroids/util/d;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 137
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 140
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    iget-object v1, p0, Lcom/nineoldandroids/util/d;->f:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 142
    :try_start_1
    iget-object v1, p0, Lcom/nineoldandroids/util/d;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 143
    :catch_2
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 147
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nineoldandroids/util/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is read-only"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lcom/nineoldandroids/util/d;, "Lcom/nineoldandroids/util/d<TT;TV;>;"
    iget-object v0, p0, Lcom/nineoldandroids/util/d;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/util/d;->f:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
