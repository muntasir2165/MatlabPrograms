function score = bowl(score_vector)

total = length(score_vector);
%vector with the minimum (all strikes) and maximum (no 10s) possible length
if (total < 12) || (total > 21)
    score = -1;
    return
end

tens = sum(score_vector == 10);
%check for no 10s and all 10s
if (tens == 0 && (mod(total, 2) ~= 0)) || (tens == total && total > 12)
    score = -1;
    return
end

score = 0;
frames = 10;
index = 1;
%score calculation for the first 9 frames
for frame=1:frames
    current_score = score_vector(index);
    next_score = score_vector(index+1);
    %check for negative scores
    if (current_score < 0) || (next_score < 0)
        score = -1;
        return
    end
    %check for strike!
    if current_score == 10
        if index + 2 > total
            score = -1;
            return
        end
        score = score + current_score + next_score + score_vector(index+2);
        index = index + 1;
    elseif current_score < 10
        %check for spare
        if current_score + next_score == 10
            if index + 2 > total
                score = -1;
                return
            end
            score = score + current_score + next_score + score_vector(index+2);            %check for open
        elseif current_score + next_score < 10
            score = score + current_score + next_score;
        else
            score = -1;
            return
        end
        index = index + 2;
    end
end

if total - index >= 2
    score = -1;
end

end