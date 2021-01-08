.class final Lcom/google/android/gms/internal/sh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/si;


# instance fields
.field private synthetic zzceC:Lcom/google/android/gms/internal/qo;

.field private synthetic zzceD:Lcom/google/android/gms/internal/sj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sf;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/sj;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/sh;->zzceC:Lcom/google/android/gms/internal/qo;

    iput-object p3, p0, Lcom/google/android/gms/internal/sh;->zzceD:Lcom/google/android/gms/internal/sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/sf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/sh;->zzceC:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/qo;->zza(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sh;->zzceD:Lcom/google/android/gms/internal/sj;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/sf;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/sj;)V

    return-void
.end method
