cohort = %w(bob sam phil jason jack eunice billy kelly micheal sarah michelle obama brian miley cyrus julienne bananaman kanye batman justin beiber)

def accountability_group(array, group_size)
  array.shuffle!
  return array.each_slice(group_size).to_a
end

cohort_size = cohort.length
p cohort_size

p accountability_group(cohort, 4).length == (cohort_size / 4) + 1