.class public interface abstract Lcom/google/common/hash/HashFunction;
.super Ljava/lang/Object;
.source "HashFunction.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# virtual methods
.method public abstract bits()I
.end method

.method public abstract hashBytes([B)Lcom/google/common/hash/HashCode;
.end method

.method public abstract hashBytes([BII)Lcom/google/common/hash/HashCode;
.end method

.method public abstract hashLong(J)Lcom/google/common/hash/HashCode;
.end method

.method public abstract hashString(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
.end method

.method public abstract hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/HashCode;
.end method

.method public abstract newHasher()Lcom/google/common/hash/Hasher;
.end method

.method public abstract newHasher(I)Lcom/google/common/hash/Hasher;
.end method
