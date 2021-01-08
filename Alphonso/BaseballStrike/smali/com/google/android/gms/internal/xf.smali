.class public interface abstract Lcom/google/android/gms/internal/xf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/internal/xf;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/gms/internal/xe;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzcit:Lcom/google/android/gms/internal/wl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/xf;->zzcit:Lcom/google/android/gms/internal/wl;

    return-void
.end method


# virtual methods
.method public abstract getChildCount()I
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract getValue(Z)Ljava/lang/Object;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract zzFy()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/xe;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zzIN()Ljava/lang/String;
.end method

.method public abstract zzIO()Z
.end method

.method public abstract zzIP()Lcom/google/android/gms/internal/xf;
.end method

.method public abstract zzN(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;
.end method

.method public abstract zza(Lcom/google/android/gms/internal/xh;)Ljava/lang/String;
.end method

.method public abstract zze(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
.end method

.method public abstract zzf(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
.end method

.method public abstract zzk(Lcom/google/android/gms/internal/wj;)Z
.end method

.method public abstract zzl(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/wj;
.end method

.method public abstract zzl(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
.end method

.method public abstract zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;
.end method
